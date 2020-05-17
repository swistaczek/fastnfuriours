DROP TABLE IF EXISTS CINEMA;

CREATE TABLE CINEMA (
    `ID` BIGINT AUTO_INCREMENT  PRIMARY KEY,
    `NAME` VARCHAR(250) NOT NULL,
    `ADDRESS` VARCHAR(250)
);

DROP TABLE IF EXISTS MOVIE;

CREATE TABLE MOVIE (
    `MOVIE_ID` VARCHAR(250) PRIMARY KEY,
    `TITLE` VARCHAR(250) NOT NULL
);

DROP TABLE IF EXISTS MOVIE_SHOW;

CREATE TABLE MOVIE_SHOW (
    `ID` BIGINT AUTO_INCREMENT  PRIMARY KEY,
    `MOVIE_ID` VARCHAR(250) NOT NULL,
    `PRICE` DOUBLE NOT NULL,
    `TIME` timestamp,
    `CINEMA_ID` BIGINT NOT NULL REFERENCES CINEMA(ID)
);

DROP TABLE IF EXISTS RATING;

CREATE TABLE RATING (
    `ID` BIGINT AUTO_INCREMENT  PRIMARY KEY,
    `MOVIE_ID` VARCHAR(250) NOT NULL REFERENCES MOVIE(MOVIE_ID),
    `RATING` LONG NOT NULL,
    `USER_IP` VARCHAR(250)
);