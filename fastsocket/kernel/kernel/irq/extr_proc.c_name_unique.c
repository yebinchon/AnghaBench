
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {scalar_t__ name; struct irqaction* next; } ;
struct irq_desc {int lock; struct irqaction* action; } ;


 struct irq_desc* irq_to_desc (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static int name_unique(unsigned int irq, struct irqaction *new_action)
{
 struct irq_desc *desc = irq_to_desc(irq);
 struct irqaction *action;
 unsigned long flags;
 int ret = 1;

 spin_lock_irqsave(&desc->lock, flags);
 for (action = desc->action ; action; action = action->next) {
  if ((action != new_action) && action->name &&
    !strcmp(new_action->name, action->name)) {
   ret = 0;
   break;
  }
 }
 spin_unlock_irqrestore(&desc->lock, flags);
 return ret;
}
