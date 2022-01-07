
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {scalar_t__ wake_depth; int lock; int status; } ;


 int IRQ_WAKEUP ;
 int WARN (int,char*,unsigned int) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int set_irq_wake_real (unsigned int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int set_irq_wake(unsigned int irq, unsigned int on)
{
 struct irq_desc *desc = irq_to_desc(irq);
 unsigned long flags;
 int ret = 0;




 spin_lock_irqsave(&desc->lock, flags);
 if (on) {
  if (desc->wake_depth++ == 0) {
   ret = set_irq_wake_real(irq, on);
   if (ret)
    desc->wake_depth = 0;
   else
    desc->status |= IRQ_WAKEUP;
  }
 } else {
  if (desc->wake_depth == 0) {
   WARN(1, "Unbalanced IRQ %d wake disable\n", irq);
  } else if (--desc->wake_depth == 0) {
   ret = set_irq_wake_real(irq, on);
   if (ret)
    desc->wake_depth = 1;
   else
    desc->status &= ~IRQ_WAKEUP;
  }
 }

 spin_unlock_irqrestore(&desc->lock, flags);
 return ret;
}
