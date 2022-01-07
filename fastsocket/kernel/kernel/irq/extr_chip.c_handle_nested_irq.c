
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int dev_id; int irq; int (* thread_fn ) (int ,int ) ;} ;
struct irq_desc {int status; int lock; struct irqaction* action; } ;
typedef int irqreturn_t ;


 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int kstat_incr_irqs_this_cpu (unsigned int,struct irq_desc*) ;
 int might_sleep () ;
 int noirqdebug ;
 int note_interrupt (unsigned int,struct irq_desc*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int ,int ) ;
 scalar_t__ unlikely (int) ;

void handle_nested_irq(unsigned int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);
 struct irqaction *action;
 irqreturn_t action_ret;

 might_sleep();

 spin_lock_irq(&desc->lock);

 kstat_incr_irqs_this_cpu(irq, desc);

 action = desc->action;
 if (unlikely(!action || (desc->status & IRQ_DISABLED)))
  goto out_unlock;

 desc->status |= IRQ_INPROGRESS;
 spin_unlock_irq(&desc->lock);

 action_ret = action->thread_fn(action->irq, action->dev_id);
 if (!noirqdebug)
  note_interrupt(irq, desc, action_ret);

 spin_lock_irq(&desc->lock);
 desc->status &= ~IRQ_INPROGRESS;

out_unlock:
 spin_unlock_irq(&desc->lock);
}
