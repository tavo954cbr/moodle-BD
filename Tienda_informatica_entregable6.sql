DROP DATABASE IF EXISTS tienda_informatica;
CREATE DATABASE tienda_informatica;

USE tienda_informatica;

CREATE TABLE Fabricantes(
	id_fabricante int auto_increment primary key,
    Nombre varchar(100) not null unique
);

CREATE TABLE Productos(
	Codigo_INT int auto_increment primary key,
    Nombre varchar(100) not null unique,
    Precio double default 0.01,
    id_fabricante int,
    CONSTRAINT producto_tiene_llave_fabricantes_fk
    FOREIGN KEY (id_fabricante)
    references fabricantes(id_fabricante)
);


INSERT INTO Fabricantes VALUES
	(null,'ASUS'),
	(null,'LENOVO'),
	(null,'Hewlett-packard'),
	(null,'Samsung'),
	(null,'Seagate'),
	(null,'Crucial'),
	(null,'Gygabite'),
	(null,'Huawei'),
	(null,'Xiaomi');

INSERT INTO Productos VALUES 
	(null,'Disco Duro SATA3 1TB',86.99,5),
	(null,'Memoria RAM DDR4 8GB',120,6),
	(null,'Disco SSD1TB',150.99,4),
	(null,'GeForce GTX 1050 Ti',185,7),
	(null,'GeForce GTX 1080 Xtreme',755,6),
	(null,'Monitor 24 LED Full HD',202,1),
	(null,'Monitor 27 LED Full HD',245.99,1),
	(null,'Portátil Yoga 520',559,2),
	(null,'Portátil Ideapad 320',444,2),
	(null,'Impresora HP Deskjet 3720',59.99,3),
	(null,'Impresora HP Laserjet Pro M26nw',180,3);
    
select Fabricantes.Nombre as Fabricante, count(Productos.Codigo_INT) as '#productos'
from Productos join Fabricantes
on Productos.id_fabricante = Fabricantes.id_fabricante
group by Productos.id_fabricante;

    
/*
SELECT 
Fabricantes.Nombre as Total,
count(Productos.Codigo_INT) as 'numero de productos'
from Fabricantes join Productos
on Fabricantes.Nombre = Fabricantes.Nombre
group by Fabricantes.Nombre
order by 2 desc;
/*







