/*create a table*/
 CREATE TABLE employee_table(  
    id int NOT NULL AUTO_INCREMENT,  
    name varchar(45) NOT NULL,  
    occupation varchar(35) NOT NULL,  
    age int NOT NULL,  
    PRIMARY KEY (id)  
); 

show tables; 

DESCRIBE employee_table; 
show tables;
desc sinky;
/*delete table*/
drop table sinky;
/*Add a column*/
ALTER TABLE employee_table
add salary int not null;
desc employee_table;
/*Add multiple columns in table*/
ALTER TABLE employee_table
add emailid varchar(50) not null,
add mobile_no int unique;

desc employee_table;
/*Modify column in the table*/
ALTER TABLE employee_table  
MODIFY email_id varchar(50);

desc employee_table;

ALTER TABLE employee_table  
DROP COLUMN mobile_no;
/*Rename column*/
ALTER TABLE  employee_table
CHANGE COLUMN  mobile_no phone_no
int not null;
desc employee_table;
/*Rename table*/
 ALTER TABLE employee_table
 RENAME TO emp_table;
 
 show tables;
 show full tables;
 show tables from mysql_db;
 show tables from mysql_db like "stud%";
 show tables in mysql_db like "time%";
 
 show databases;
 use mysql_db;
 /*truncate table*/
 CREATE TABLE customer (    
    Id int PRIMARY KEY NOT NULL,     
    Name varchar(45) NOT NULL,     
    Product varchar(45) DEFAULT NULL,     
    Country varchar(25) DEFAULT NULL,     
    Year int NOT NULL    
); 
describe customer;
INSERT INTO customer ( Id, Name, Product, Country, Year)     
VALUES (1, 'Stephen', 'Computer', 'USA', 2015),     
(2, 'Joseph', 'Laptop', 'India', 2016),     
(3, 'John', 'TV', 'USA', 2016),    
(4, 'Donald', 'Laptop', 'England', 2015),    
(5, 'Joseph', 'Mobile', 'India', 2015),    
(6, 'Peter', 'Mouse', 'England', 2016);  

select * from customer;
/*delete the record*/
truncate table customer;
select* from customer;
show columns from emp_table;
/*Temporary table*/
CREATE TEMPORARY TABLE Students
( student_name VARCHAR(40) NOT NULL,
 total_marks DECIMAL(12,2) NOT NULL DEFAULT 0.00,
 total_subjects INT UNSIGNED NOT NULL DEFAULT 0); 
 
 INSERT INTO Students(student_name, total_marks,
 total_subjects) VALUES ('sandeep', 150.75, 2),
 ('Priya', 180.75, 2),('sinky',190.5,2); 
 
 select * from students;

INSERT INTO customer ( Id, Name, Product, Country, Year)     
VALUES (1, 'Stephen', 'Computer', 'USA', 2015),     
(2, 'Joseph', 'Laptop', 'India', 2016),     
(3, 'John', 'TV', 'USA', 2016),    
(4, 'Donald', 'Laptop', 'England', 2015),    
(5, 'Joseph', 'Mobile', 'India', 2015),    
(6, 'Peter', 'Mouse', 'England', 2016); 

select*from customer;
select*from emp_table;
/*column delete*/
ALTER TABLE emp_table  
DROP COLUMN occupation;
truncate table emp_table;

Insert into emp_table (id,name,age,salary,phone_no,emailid)
values (1, 'sinky', 23, 25000, 1234567894, 'sinky@gmail.com');

/*INSERT INTO emp_table  (id,name,age,salary,phone_no,emailid)
VALUES(2,'sandeep', 21, 20000, 9234567894, 'sandeep@gmail.com');
 (3, 'priya', 27, 35000, 9454567894, 'priya@gmail.com'),
(4, 'renu', 25, 45000, 9856567894, 'renu@gmail.com');*/

select * from emp_table;
/* NOT NULL Constraint*/
 CREATE TABLE Student
 (Id INTEGER, FirstName TEXT NOT NULL,
 LastName TEXT NOT NULL, 
 City VARCHAR(35));  
 
  INSERT INTO Student VALUES(1, 'Sinky', 'Verma', 'Ludhiana');
 INSERT INTO Student VALUES(2, 'Sandeep', 'Kumar', 'Bangalore');
  INSERT INTO Student VALUES(3, 'Priya', 'Kumari', 'Patna');

select * from student;
/*UNIQUE Constraint*/
 CREATE TABLE ShirtBrands
 (Id INTEGER, BrandName VARCHAR(40) UNIQUE,
 Size VARCHAR(30));  
  INSERT INTO ShirtBrands(Id, BrandName, Size)
  VALUES(1, 'Pantaloons', 38), (2, 'Cantabil', 40),(3, 'Raymond', 36); 
  
select* from shirtBrands;

/*CHECK Constraint*/
 CREATE TABLE Persons (  
    ID int NOT NULL,  
    Name varchar(45) NOT NULL,  
    Age int CHECK (Age>=18)  
);  
 INSERT INTO Persons(Id, Name, Age)   
VALUES (1,'Robert', 28), (2, 'Joseph', 35), 
(3, 'Peter', 40);  

/*DEFAULT Constraint*/
CREATE TABLE Persons_1 (  
    ID int NOT NULL,  
    Name varchar(45) NOT NULL,  
    Age int,  
    City varchar(25) DEFAULT 'New York'  
);  

 INSERT INTO Persons_1(Id, Name, Age, City)   
VALUES (1,'Robert', 15, 'Florida'),   
(2, 'Joseph', 35, 'California'),   
(3, 'Peter', 40, 'Alaska');  

select * from persons_1;
INSERT INTO Persons_1(Id, Name, Age) 
VALUES (1,'Brayan', 15);  

/*PRIMARY KEY Constraint*/
CREATE TABLE Persons_2 (  
    ID int NOT NULL PRIMARY KEY,   
    Name varchar(45) NOT NULL,   
    Age int,   
    City varchar(25));  

INSERT INTO Persons_2(Id, Name, Age, City)   
VALUES (1,'Robert', 15, 'Florida') ,   
(2, 'Joseph', 35, 'California'),   
(3, 'Peter', 40, 'Alaska');  
select* from persons_2;

INSERT INTO Persons_2(Id, Name, Age, City)   
VALUES (1,'Stephen', 15, 'Florida');  

/*AUTO_INCREMENT Constraint*/
CREATE TABLE Animals(  
id int NOT NULL AUTO_INCREMENT,   
name CHAR(30) NOT NULL,   
PRIMARY KEY (id));  

INSERT INTO Animals (name) VALUES   
('Tiger'),('Dog'),('Penguin'),   
('Camel'),('Cat'),('Ostrich');  

select* from Animals;

/*ENUM Constraint*/
 CREATE TABLE Shirts (    
    id INT PRIMARY KEY AUTO_INCREMENT,     
    name VARCHAR(35),     
    size ENUM('small', 'medium', 'large', 'x-large')    
);  
INSERT INTO Shirts(id, name, size)     
VALUES (1,'t-shirt', 'medium'),     
(2, 'casual-shirt', 'small'),     
(3, 'formal-shirt', 'large');  
select * from shirts;

/*INDEX Constraint*/
CREATE TABLE Shirts_1 (    
    id INT PRIMARY KEY AUTO_INCREMENT,     
    name VARCHAR(35),     
    size ENUM('small', 'medium', 'large', 'x-large')    
);  
INSERT INTO Shirts_1(id, name, size)     
VALUES (1,'t-shirt', 'medium'),     
(2, 'casual-shirt', 'small'),     
(3, 'formal-shirt', 'large'); 

CREATE INDEX idx_name ON Shirts(name);  
SELECT * FROM Shirts USE INDEX(idx_name);  

/*Foreign Key Constraint*/
CREATE TABLE Persons_3 (  
    Person_ID int NOT NULL PRIMARY KEY,   
    Name varchar(45) NOT NULL,   
    Age int,   
    City varchar(25)  
);  

INSERT INTO Persons_3(Person_ID, Name, Age, City)   
VALUES (1,'Satya', 25, 'Delhi') ,   
(2, 'Ruby', 35, 'New Delhi'),   
(3, 'Preety', 20, 'Patna');  

CREATE TABLE Orders (  
    Order_ID int NOT NULL PRIMARY KEY,  
    Order_Num int NOT NULL,  
    Person_ID int,  
    FOREIGN KEY (Person_ID) 
    REFERENCES Persons_3(Person_ID)  
);

INSERT INTO Orders(Order_Id, Order_Num,Person_ID)   
VALUES (1,5544,2) ,   
(2, 3322,3),   
(3, 2135,2);

select * from Persons_3;
select * from Orders;


  
