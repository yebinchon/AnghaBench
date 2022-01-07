
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 struct pci_dev* default_vga ;

void vga_set_default_device(struct pci_dev *pdev)
{
 default_vga = pdev;
}
