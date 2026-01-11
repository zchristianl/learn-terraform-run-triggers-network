# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {
  state = "available"

  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

resource "aws_vpc" "example" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Project = var.project_tag
  }
}

  tags = {
    Project = var.project_tag
  }
}
