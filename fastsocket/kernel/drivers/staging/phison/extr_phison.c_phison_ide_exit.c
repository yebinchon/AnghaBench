
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_unregister_driver (int *) ;
 int phison_pci_driver ;

__attribute__((used)) static void phison_ide_exit(void)
{
 pci_unregister_driver(&phison_pci_driver);
}
