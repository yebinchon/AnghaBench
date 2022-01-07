
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irqaction {int flags; scalar_t__ (* handler ) (int,int ) ;struct irqaction* next; int dev_id; } ;
struct irq_desc {int status; int lock; TYPE_1__* chip; struct irqaction* action; } ;
struct TYPE_2__ {int (* end ) (int) ;} ;


 int IRQF_SHARED ;
 scalar_t__ IRQ_HANDLED ;
 int IRQ_INPROGRESS ;
 int IRQ_PENDING ;
 int handle_IRQ_event (int,struct irqaction*) ;
 int local_irq_disable () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (int,int ) ;
 int stub2 (int) ;

__attribute__((used)) static int try_one_irq(int irq, struct irq_desc *desc)
{
 struct irqaction *action;
 int ok = 0, work = 0;

 spin_lock(&desc->lock);

 if (desc->status & IRQ_INPROGRESS) {




  if (desc->action && (desc->action->flags & IRQF_SHARED))
   desc->status |= IRQ_PENDING;
  spin_unlock(&desc->lock);
  return ok;
 }

 desc->status |= IRQ_INPROGRESS;
 action = desc->action;
 spin_unlock(&desc->lock);

 while (action) {

  if (action->flags & IRQF_SHARED) {
   if (action->handler(irq, action->dev_id) ==
    IRQ_HANDLED)
    ok = 1;
  }
  action = action->next;
 }
 local_irq_disable();

 spin_lock(&desc->lock);
 action = desc->action;





 while ((desc->status & IRQ_PENDING) && action) {



  work = 1;
  spin_unlock(&desc->lock);
  handle_IRQ_event(irq, action);
  spin_lock(&desc->lock);
  desc->status &= ~IRQ_PENDING;
 }
 desc->status &= ~IRQ_INPROGRESS;




 if (work && desc->chip && desc->chip->end)
  desc->chip->end(irq);
 spin_unlock(&desc->lock);

 return ok;
}
