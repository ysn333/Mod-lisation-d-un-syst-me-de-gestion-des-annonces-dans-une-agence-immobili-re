
CREATE TABLE client (
  id_client INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL,
  prenom VARCHAR(50) NOT NULL,
  telephone VARCHAR(20) NOT NULL,
  adresse_email VARCHAR(100) NOT NULL,
  password varchar(50) NOT NULL
);

CREATE TABLE annonce (
  id_annonce INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  id_client INT NOT NULL,
  titre VARCHAR(100) NOT NULL,
  description VARCHAR(100) NOT NULL,
  adresse VARCHAR(100) NOT NULL,
  superficie INT NOT NULL,
  categorie VARCHAR(50) NOT NULL,
  type_annonce VARCHAR(50) NOT NULL,
  prix DECIMAL(10,2) NOT NULL,
  date_publication date NOT NULL,
  date_modification date NOT NULL,
  FOREIGN KEY (id_client) REFERENCES client(id_client)
);

CREATE TABLE image (
  id_image INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  id_annonce INT NOT NULL,
  nom_image varchar(350) NOT NULL,
  url_image varchar(350) NOT NULL,
  FOREIGN KEY (id_annonce) REFERENCES annonce(id_annonce)
);

CREATE INDEX idx_id_prop ON client (id_client);
CREATE INDEX idx_id_bien ON annonce (id_annonce);
CREATE INDEX idx_id_bien ON image (id_image);

