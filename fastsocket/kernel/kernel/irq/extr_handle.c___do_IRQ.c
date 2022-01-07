
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irqaction {int dummy; } ;
struct irq_desc {unsigned int status; int lock; TYPE_1__* chip; struct irqaction* action; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* end ) (unsigned int) ;int (* ack ) (unsigned int) ;} ;


 scalar_t__ CHECK_IRQ_PER_CPU (unsigned int) ;
 unsigned int IRQ_DISABLED ;
 unsigned int IRQ_INPROGRESS ;
 unsigned int IRQ_PENDING ;
 unsigned int IRQ_REPLAY ;
 unsigned int IRQ_WAITING ;
 int handle_IRQ_event (unsigned int,struct irqaction*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int kstat_incr_irqs_this_cpu (unsigned int,struct irq_desc*) ;
 scalar_t__ likely (int) ;
 int noirqdebug ;
 int note_interrupt (unsigned int,struct irq_desc*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;
 int stub3 (unsigned int) ;
 int stub4 (unsigned int) ;
 scalar_t__ unlikely (int) ;

unsigned int __do_IRQ(unsigned int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);
 struct irqaction *action;
 unsigned int status;

 kstat_incr_irqs_this_cpu(irq, desc);

 if (CHECK_IRQ_PER_CPU(desc->status)) {
  irqreturn_t action_ret;




  if (desc->chip->ack)
   desc->chip->ack(irq);
  if (likely(!(desc->status & IRQ_DISABLED))) {
   action_ret = handle_IRQ_event(irq, desc->action);
   if (!noirqdebug)
    note_interrupt(irq, desc, action_ret);
  }
  desc->chip->end(irq);
  return 1;
 }

 spin_lock(&desc->lock);
 if (desc->chip->ack)
  desc->chip->ack(irq);




 status = desc->status & ~(IRQ_REPLAY | IRQ_WAITING);
 status |= IRQ_PENDING;





 action = ((void*)0);
 if (likely(!(status & (IRQ_DISABLED | IRQ_INPROGRESS)))) {
  action = desc->action;
  status &= ~IRQ_PENDING;
  status |= IRQ_INPROGRESS;
 }
 desc->status = status;







 if (unlikely(!action))
  goto out;
 for (;;) {
  irqreturn_t action_ret;

  spin_unlock(&desc->lock);

  action_ret = handle_IRQ_event(irq, action);
  if (!noirqdebug)
   note_interrupt(irq, desc, action_ret);

  spin_lock(&desc->lock);
  if (likely(!(desc->status & IRQ_PENDING)))
   break;
  desc->status &= ~IRQ_PENDING;
 }
 desc->status &= ~IRQ_INPROGRESS;

out:




 desc->chip->end(irq);
 spin_unlock(&desc->lock);

 return 1;
}
