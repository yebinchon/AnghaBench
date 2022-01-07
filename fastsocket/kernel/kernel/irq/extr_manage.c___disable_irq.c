
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irq_desc {TYPE_2__* chip; int status; int depth; TYPE_1__* action; } ;
struct TYPE_4__ {int (* disable ) (unsigned int) ;} ;
struct TYPE_3__ {int flags; } ;


 int IRQF_NO_SUSPEND ;
 int IRQF_TIMER ;
 int IRQ_DISABLED ;
 int IRQ_SUSPENDED ;
 int stub1 (unsigned int) ;

void __disable_irq(struct irq_desc *desc, unsigned int irq, bool suspend)
{
 if (suspend) {


  if (!desc->action ||
      (desc->action->flags & (IRQF_TIMER|IRQF_NO_SUSPEND)))
   return;
  desc->status |= IRQ_SUSPENDED;
 }

 if (!desc->depth++) {
  desc->status |= IRQ_DISABLED;
  desc->chip->disable(irq);
 }
}
