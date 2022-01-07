
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {TYPE_1__* chip; int action; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* eoi ) (unsigned int) ;int (* ack ) (unsigned int) ;} ;


 int handle_IRQ_event (unsigned int,int ) ;
 int kstat_incr_irqs_this_cpu (unsigned int,struct irq_desc*) ;
 int noirqdebug ;
 int note_interrupt (unsigned int,struct irq_desc*,int ) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;

void
handle_percpu_irq(unsigned int irq, struct irq_desc *desc)
{
 irqreturn_t action_ret;

 kstat_incr_irqs_this_cpu(irq, desc);

 if (desc->chip->ack)
  desc->chip->ack(irq);

 action_ret = handle_IRQ_event(irq, desc->action);
 if (!noirqdebug)
  note_interrupt(irq, desc, action_ret);

 if (desc->chip->eoi)
  desc->chip->eoi(irq);
}
