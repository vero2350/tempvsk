terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.46.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIA6G75D7U7K2L6BQRB"
  secret_key = "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"
}

resource "aws_instance" "devclass1" {
  ami           = "ami-0166fe664262f664c"
  instance_type = "t2.micro"
  key_name = "vero2key"
  security_groups = ["default", "sg-0f1b3cc3be13d543a"]
}
