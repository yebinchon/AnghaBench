
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {scalar_t__ action; } ;


 int disable_irq_nosync (unsigned int) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int synchronize_irq (unsigned int) ;

void disable_irq(unsigned int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);

 if (!desc)
  return;

 disable_irq_nosync(irq);
 if (desc->action)
  synchronize_irq(irq);
}
