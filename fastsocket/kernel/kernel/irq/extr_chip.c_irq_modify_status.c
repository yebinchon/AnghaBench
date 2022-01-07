
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {unsigned long status; int lock; } ;


 unsigned long IRQF_MODIFY_MASK ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void irq_modify_status(unsigned int irq, unsigned long clr, unsigned long set)
{
 struct irq_desc *desc = irq_to_desc(irq);
 unsigned long flags;

 if (!desc)
  return;


 set &= IRQF_MODIFY_MASK;
 clr &= IRQF_MODIFY_MASK;

 spin_lock_irqsave(&desc->lock, flags);
 desc->status &= ~clr;
 desc->status |= set;
 spin_unlock_irqrestore(&desc->lock, flags);
}
