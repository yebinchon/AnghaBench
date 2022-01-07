
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irqaction {int dummy; } ;
struct irq_desc {int status; int lock; TYPE_1__* chip; struct irqaction* action; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* unmask ) (unsigned int) ;int (* mask ) (unsigned int) ;int (* ack ) (unsigned int) ;} ;


 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 int IRQ_MASKED ;
 int IRQ_PENDING ;
 int IRQ_REPLAY ;
 int IRQ_WAITING ;
 int handle_IRQ_event (unsigned int,struct irqaction*) ;
 int kstat_incr_irqs_this_cpu (unsigned int,struct irq_desc*) ;
 int mask_ack_irq (struct irq_desc*,unsigned int) ;
 int noirqdebug ;
 int note_interrupt (unsigned int,struct irq_desc*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;
 int stub3 (unsigned int) ;
 scalar_t__ unlikely (int) ;

void
handle_edge_irq(unsigned int irq, struct irq_desc *desc)
{
 spin_lock(&desc->lock);

 desc->status &= ~(IRQ_REPLAY | IRQ_WAITING);






 if (unlikely((desc->status & (IRQ_INPROGRESS | IRQ_DISABLED)) ||
      !desc->action)) {
  desc->status |= (IRQ_PENDING | IRQ_MASKED);
  mask_ack_irq(desc, irq);
  goto out_unlock;
 }
 kstat_incr_irqs_this_cpu(irq, desc);


 if (desc->chip->ack)
  desc->chip->ack(irq);


 desc->status |= IRQ_INPROGRESS;

 do {
  struct irqaction *action = desc->action;
  irqreturn_t action_ret;

  if (unlikely(!action)) {
   desc->chip->mask(irq);
   goto out_unlock;
  }






  if (unlikely((desc->status &
          (IRQ_PENDING | IRQ_MASKED | IRQ_DISABLED)) ==
         (IRQ_PENDING | IRQ_MASKED))) {
   desc->chip->unmask(irq);
   desc->status &= ~IRQ_MASKED;
  }

  desc->status &= ~IRQ_PENDING;
  spin_unlock(&desc->lock);
  action_ret = handle_IRQ_event(irq, action);
  if (!noirqdebug)
   note_interrupt(irq, desc, action_ret);
  spin_lock(&desc->lock);

 } while ((desc->status & (IRQ_PENDING | IRQ_DISABLED)) == IRQ_PENDING);

 desc->status &= ~IRQ_INPROGRESS;
out_unlock:
 spin_unlock(&desc->lock);
}
