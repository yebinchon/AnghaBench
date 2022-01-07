
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct atmel_abdac {TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int DAC_BIT (int ) ;
 int INT_CLR ;
 int INT_STATUS ;
 int IRQ_HANDLED ;
 int UNDERRUN ;
 int dac_readl (struct atmel_abdac*,int ) ;
 int dac_writel (struct atmel_abdac*,int ,int) ;
 int dev_err (int *,char*,...) ;

__attribute__((used)) static irqreturn_t abdac_interrupt(int irq, void *dev_id)
{
 struct atmel_abdac *dac = dev_id;
 u32 status;

 status = dac_readl(dac, INT_STATUS);
 if (status & DAC_BIT(UNDERRUN)) {
  dev_err(&dac->pdev->dev, "underrun detected\n");
  dac_writel(dac, INT_CLR, DAC_BIT(UNDERRUN));
 } else {
  dev_err(&dac->pdev->dev, "spurious interrupt (status=0x%x)\n",
   status);
  dac_writel(dac, INT_CLR, status);
 }

 return IRQ_HANDLED;
}
