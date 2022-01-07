
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 int ARRAY_SIZE (int*) ;
 int PCI_SLOT (int ) ;
 int comedi_auto_config (int *,char const*,int*,int ) ;

int comedi_pci_auto_config(struct pci_dev *pcidev, const char *board_name)
{
 int options[2];


 options[0] = pcidev->bus->number;

 options[1] = PCI_SLOT(pcidev->devfn);

 return comedi_auto_config(&pcidev->dev, board_name,
      options, ARRAY_SIZE(options));
}
