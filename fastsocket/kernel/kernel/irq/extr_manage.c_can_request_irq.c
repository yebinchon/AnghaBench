
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {unsigned long flags; } ;
struct irq_desc {int status; struct irqaction* action; } ;


 unsigned long IRQF_SHARED ;
 int IRQ_NOREQUEST ;
 struct irq_desc* irq_to_desc (unsigned int) ;

int can_request_irq(unsigned int irq, unsigned long irqflags)
{
 struct irq_desc *desc = irq_to_desc(irq);
 struct irqaction *action;

 if (!desc)
  return 0;

 if (desc->status & IRQ_NOREQUEST)
  return 0;

 action = desc->action;
 if (action)
  if (irqflags & action->flags & IRQF_SHARED)
   action = ((void*)0);

 return !action;
}
