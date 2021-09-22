terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.77.0"
    }
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "0.1.7"
    }
  }
}

provider "azuredevops" {
  org_service_url       = var.ado_org_service_url
  personal_access_token = var.ado_personal_access_token
}

provider "azurerm" {
  features {
  }
}

data "azurerm_client_config" "current" {}