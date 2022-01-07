
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int et131x_driver ;
 int pci_unregister_driver (int *) ;

__attribute__((used)) static void et131x_cleanup_module(void)
{
 pci_unregister_driver(&et131x_driver);
}
