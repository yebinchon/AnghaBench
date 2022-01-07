
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int lock; } ;


 int __enable_irq (struct irq_desc*,unsigned int,int) ;
 int chip_bus_lock (unsigned int,struct irq_desc*) ;
 int chip_bus_sync_unlock (unsigned int,struct irq_desc*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void enable_irq(unsigned int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);
 unsigned long flags;

 if (!desc)
  return;

 chip_bus_lock(irq, desc);
 spin_lock_irqsave(&desc->lock, flags);
 __enable_irq(desc, irq, 0);
 spin_unlock_irqrestore(&desc->lock, flags);
 chip_bus_sync_unlock(irq, desc);
}
