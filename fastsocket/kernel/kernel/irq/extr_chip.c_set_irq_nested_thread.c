
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int lock; int status; } ;


 int IRQ_NESTED_THREAD ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void set_irq_nested_thread(unsigned int irq, int nest)
{
 struct irq_desc *desc = irq_to_desc(irq);
 unsigned long flags;

 if (!desc)
  return;

 spin_lock_irqsave(&desc->lock, flags);
 if (nest)
  desc->status |= IRQ_NESTED_THREAD;
 else
  desc->status &= ~IRQ_NESTED_THREAD;
 spin_unlock_irqrestore(&desc->lock, flags);
}
