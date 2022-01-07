
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 scalar_t__ UHCI_USBCMD ;
 int UHCI_USBCMD_HCRESET ;
 scalar_t__ UHCI_USBINTR ;
 int UHCI_USBLEGSUP ;
 int UHCI_USBLEGSUP_RWC ;
 int dev_warn (int *,char*) ;
 int inw (scalar_t__) ;
 int mb () ;
 int outw (int,scalar_t__) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;
 int udelay (int) ;

void uhci_reset_hc(struct pci_dev *pdev, unsigned long base)
{



 pci_write_config_word(pdev, UHCI_USBLEGSUP, UHCI_USBLEGSUP_RWC);






 outw(UHCI_USBCMD_HCRESET, base + UHCI_USBCMD);
 mb();
 udelay(5);
 if (inw(base + UHCI_USBCMD) & UHCI_USBCMD_HCRESET)
  dev_warn(&pdev->dev, "HCRESET not completed yet!\n");




 outw(0, base + UHCI_USBINTR);
 outw(0, base + UHCI_USBCMD);
}
