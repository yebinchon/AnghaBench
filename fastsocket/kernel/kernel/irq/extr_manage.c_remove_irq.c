
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int dev_id; } ;


 int __free_irq (unsigned int,int ) ;

void remove_irq(unsigned int irq, struct irqaction *act)
{
 __free_irq(irq, act->dev_id);
}
