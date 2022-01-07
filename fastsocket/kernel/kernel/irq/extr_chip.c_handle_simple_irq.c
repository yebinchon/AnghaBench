
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int dummy; } ;
struct irq_desc {int status; int lock; struct irqaction* action; } ;
typedef int irqreturn_t ;


 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 int IRQ_REPLAY ;
 int IRQ_WAITING ;
 int handle_IRQ_event (unsigned int,struct irqaction*) ;
 int kstat_incr_irqs_this_cpu (unsigned int,struct irq_desc*) ;
 int noirqdebug ;
 int note_interrupt (unsigned int,struct irq_desc*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

void
handle_simple_irq(unsigned int irq, struct irq_desc *desc)
{
 struct irqaction *action;
 irqreturn_t action_ret;

 spin_lock(&desc->lock);

 if (unlikely(desc->status & IRQ_INPROGRESS))
  goto out_unlock;
 desc->status &= ~(IRQ_REPLAY | IRQ_WAITING);
 kstat_incr_irqs_this_cpu(irq, desc);

 action = desc->action;
 if (unlikely(!action || (desc->status & IRQ_DISABLED)))
  goto out_unlock;

 desc->status |= IRQ_INPROGRESS;
 spin_unlock(&desc->lock);

 action_ret = handle_IRQ_event(irq, action);
 if (!noirqdebug)
  note_interrupt(irq, desc, action_ret);

 spin_lock(&desc->lock);
 desc->status &= ~IRQ_INPROGRESS;
out_unlock:
 spin_unlock(&desc->lock);
}
