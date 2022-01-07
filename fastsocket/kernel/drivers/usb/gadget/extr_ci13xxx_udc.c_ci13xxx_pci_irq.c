
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_err (int *,char*) ;
 int udc_irq () ;

__attribute__((used)) static irqreturn_t ci13xxx_pci_irq(int irq, void *pdev)
{
 if (irq == 0) {
  dev_err(&((struct pci_dev *)pdev)->dev, "Invalid IRQ0 usage!");
  return IRQ_HANDLED;
 }
 return udc_irq();
}
