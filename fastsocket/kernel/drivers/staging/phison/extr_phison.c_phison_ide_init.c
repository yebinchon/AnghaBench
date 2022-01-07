
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_register_driver (int *) ;
 int phison_pci_driver ;

__attribute__((used)) static int phison_ide_init(void)
{
 return pci_register_driver(&phison_pci_driver);
}
