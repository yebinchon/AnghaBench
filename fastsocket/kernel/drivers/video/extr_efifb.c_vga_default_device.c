
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 struct pci_dev* default_vga ;

struct pci_dev *vga_default_device(void)
{
 return default_vga;
}
