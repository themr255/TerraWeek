provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "prod_rg" {
  name     = "ODL-azure-976322"
  location = "East US"
}

resource "azurerm_virtual_network" "prod_vnet" {
  name                = "vm_prod_vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.prod_rg.location
  resource_group_name = azurerm_resource_group.prod_rg.name
}