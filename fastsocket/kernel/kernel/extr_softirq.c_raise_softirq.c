
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int raise_softirq_irqoff (unsigned int) ;

void raise_softirq(unsigned int nr)
{
 unsigned long flags;

 local_irq_save(flags);
 raise_softirq_irqoff(nr);
 local_irq_restore(flags);
}
