
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ TSI148_LCSR_INTC ;
 scalar_t__ TSI148_LCSR_INTEN ;
 scalar_t__ TSI148_LCSR_INTEO ;
 int free_irq (int ,struct pci_dev*) ;
 int iowrite32be (int,scalar_t__) ;
 TYPE_1__* tsi148_bridge ;

__attribute__((used)) static void tsi148_irq_exit(struct pci_dev *pdev)
{

 iowrite32be(0x0, tsi148_bridge->base + TSI148_LCSR_INTEO);
 iowrite32be(0x0, tsi148_bridge->base + TSI148_LCSR_INTEN);


 iowrite32be(0xFFFFFFFF, tsi148_bridge->base + TSI148_LCSR_INTC);


 free_irq(pdev->irq, pdev);
}
