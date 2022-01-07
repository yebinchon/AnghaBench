
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {unsigned int status; TYPE_1__* chip; } ;
struct TYPE_2__ {int (* retrigger ) (unsigned int) ;int (* enable ) (unsigned int) ;} ;


 unsigned int IRQ_LEVEL ;
 unsigned int IRQ_PENDING ;
 unsigned int IRQ_REPLAY ;
 int irqs_resend ;
 int resend_tasklet ;
 int set_bit (unsigned int,int ) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;
 int tasklet_schedule (int *) ;

void check_irq_resend(struct irq_desc *desc, unsigned int irq)
{
 unsigned int status = desc->status;




 desc->chip->enable(irq);






 if ((status & (IRQ_LEVEL | IRQ_PENDING | IRQ_REPLAY)) == IRQ_PENDING) {
  desc->status = (status & ~IRQ_PENDING) | IRQ_REPLAY;

  if (!desc->chip->retrigger || !desc->chip->retrigger(irq)) {





  }
 }
}
