
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ LINT_EN ;
 scalar_t__ LINT_STAT ;
 scalar_t__ VINT_EN ;
 TYPE_1__* ca91cx42_bridge ;
 int free_irq (int ,struct pci_dev*) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void ca91cx42_irq_exit(struct pci_dev *pdev)
{

 iowrite32(0, ca91cx42_bridge->base + VINT_EN);


 iowrite32(0, ca91cx42_bridge->base + LINT_EN);

 iowrite32(0x00FFFFFF, ca91cx42_bridge->base + LINT_STAT);

 free_irq(pdev->irq, pdev);
}
