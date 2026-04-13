--how to create database
--create database sales_details

--how to create table 
--create table customers 
--(
-- CustomerKey int primary key,
-- GeographyKey int,
-- Customer varchar(30),
-- Continent varchar(10),
-- Region varchar(10)
--)


-- create product table
--create table products 
--(
-- ProductKey int primary key,
-- ProductName varchar(30),
-- Size char(1),
-- CategoryName varchar(30) not null
--)

-- create sales table
--create table sales 
--(
--SON int primary key,
--productkey int,
--customerkey int,
--qty int not null,
--unitprice float not null,
--revenue float not null,

--foreign key (productkey) references products(ProductKey),
--foreign key (customerkey) references customers(CustomerKey)
--)


-- get / display /show customers
--select *
--from customers


-- fill table customers

--insert into customers
--values 
--(100,1,'ahmed','africa','egypt'),
--(101,1,'mohamed','africa','soriia'),
--(102,1,'olaa','africa','egypt'),
--(103,1,'wlaa','africa','soriia'),
--(104,1,'soha','africa','egypt'),
--(105,1,'aya','africa','soriia')

-- fill table products
--insert into products
--values
--(600,'STEAK in Powder1','L','Protein'),
--(601,'STEAK in Powder2','M','Protein'),
--(602,'STEAK in Powder3','S','Protein'),
--(603,'STEAK in Powder4','M','Protein'),
--(604,'STEAK in Powder5','L','Protein'),
--(605,'STEAK in Powder6','S','Protein'),
--(606,'STEAK in Powder7','L','Protein')


-- fill sales table
--insert into sales
--values
--(500,601,102,2,50,100),
--(501,602,105,4,20,100),
--(502,603,104,6,40,1200),
--(503,600,103,5,30,1650),
--(504,601,100,1,80,1870),
--(505,601,101,1,100,1790)

--1 show the customers table 
--select *
--from customers

--2 show / print / display sales
select* 
from sales

select * 
from products

-- get product name , size 
select productname , size
from products



select *  
from sales


-- 4- get the products which make rev more that 1000
select *
from sales
where revenue >1000


select * 
from customers

-- get only customer whos name is ahmed
select *
from customers
where customer='ahmed'


-- get the product price between 40 : 80
select * 
from sales
where unitprice between 40 and 80


-- get sales qty >5 and revenue >1000

select *
from sales
where qty >=5 and revenue > 1000



-- get the product price not between 40 : 80
select * 
from sales
where unitprice not between 40 and 80


select * 
from customers
where customer='olaa'


select *
from customers
where customer is null


select * 
from customers
where customer is not null

select *
from customers
where customer like 'a%'

select *
from customers
where customer like '%a'

select *
from customers
where customer like '%on%'


select * 
from customers
where customer like '_o%'


select *
from sales
order by qty desc


select productkey , revenue
from sales
order by revenue


delete from products
where productkey = 606

select *
from products


-- update 
update products
set size='X'
where productkey =605





select size , sum(productkey)
from products
group by Size


select min(revenue)
from sales


select max(revenue)
from sales

select sum(qty)
from sales

