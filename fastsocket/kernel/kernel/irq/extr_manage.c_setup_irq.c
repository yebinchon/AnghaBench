
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int dummy; } ;
struct irq_desc {int dummy; } ;


 int __setup_irq (unsigned int,struct irq_desc*,struct irqaction*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;

int setup_irq(unsigned int irq, struct irqaction *act)
{
 struct irq_desc *desc = irq_to_desc(irq);

 return __setup_irq(irq, desc, act);
}
