
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net2280 {int lock; TYPE_1__* regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int irqstat0; int irqstat1; } ;


 int INTA_ASSERTED ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int handle_stat0_irqs (struct net2280*,int) ;
 int handle_stat1_irqs (struct net2280*,int) ;
 int readl (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t net2280_irq (int irq, void *_dev)
{
 struct net2280 *dev = _dev;


 if (!(readl(&dev->regs->irqstat0) & (1 << INTA_ASSERTED)))
  return IRQ_NONE;

 spin_lock (&dev->lock);


 handle_stat1_irqs (dev, readl (&dev->regs->irqstat1));


 handle_stat0_irqs (dev, readl (&dev->regs->irqstat0));

 spin_unlock (&dev->lock);

 return IRQ_HANDLED;
}
