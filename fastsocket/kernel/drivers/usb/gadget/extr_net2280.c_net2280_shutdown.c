
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net2280 {TYPE_2__* usb; TYPE_1__* regs; } ;
struct TYPE_4__ {int usbctl; } ;
struct TYPE_3__ {int pciirqenb1; int pciirqenb0; } ;


 struct net2280* pci_get_drvdata (struct pci_dev*) ;
 int writel (int ,int *) ;

__attribute__((used)) static void net2280_shutdown (struct pci_dev *pdev)
{
 struct net2280 *dev = pci_get_drvdata (pdev);


 writel (0, &dev->regs->pciirqenb0);
 writel (0, &dev->regs->pciirqenb1);


 writel (0, &dev->usb->usbctl);
}
