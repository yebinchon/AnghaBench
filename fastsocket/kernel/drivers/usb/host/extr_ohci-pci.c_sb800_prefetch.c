
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ohci_hcd {int dummy; } ;
struct TYPE_3__ {int controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 TYPE_2__* ohci_to_hcd (struct ohci_hcd*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sb800_prefetch(struct ohci_hcd *ohci, int on)
{
 struct pci_dev *pdev;
 u16 misc;

 pdev = to_pci_dev(ohci_to_hcd(ohci)->self.controller);
 pci_read_config_word(pdev, 0x50, &misc);
 if (on == 0)
  pci_write_config_word(pdev, 0x50, misc & 0xfcff);
 else
  pci_write_config_word(pdev, 0x50, misc | 0x0300);
}
