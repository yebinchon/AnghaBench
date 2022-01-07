
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int comedi_auto_unconfig (int *) ;

void comedi_pci_auto_unconfig(struct pci_dev *pcidev)
{
 comedi_auto_unconfig(&pcidev->dev);
}
