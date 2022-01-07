
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cx25821_pci_driver ;
 int pci_unregister_driver (int *) ;

__attribute__((used)) static void cx25821_fini(void)
{
 pci_unregister_driver(&cx25821_pci_driver);
}
