
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irqaction {void* dev_id; int flags; scalar_t__ thread; int thread_flags; int (* handler ) (unsigned int,void*) ;struct irqaction* next; } ;
struct irq_desc {int lock; int * affinity_hint; TYPE_1__* chip; int status; struct irqaction* action; } ;
struct TYPE_2__ {int (* disable ) (unsigned int) ;int (* shutdown ) (unsigned int) ;int (* release ) (unsigned int,void*) ;} ;


 int IRQF_SHARED ;
 int IRQTF_DIED ;
 int IRQ_DISABLED ;
 int WARN (int,char*,unsigned int) ;
 scalar_t__ WARN_ON_ONCE (int *) ;
 int in_interrupt () ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int kthread_stop (scalar_t__) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int put_task_struct (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (unsigned int,void*) ;
 int stub2 (unsigned int) ;
 int stub3 (unsigned int) ;
 int stub4 (unsigned int,void*) ;
 int synchronize_irq (unsigned int) ;
 int test_bit (int ,int *) ;
 int unregister_handler_proc (unsigned int,struct irqaction*) ;

__attribute__((used)) static struct irqaction *__free_irq(unsigned int irq, void *dev_id)
{
 struct irq_desc *desc = irq_to_desc(irq);
 struct irqaction *action, **action_ptr;
 unsigned long flags;

 WARN(in_interrupt(), "Trying to free IRQ %d from IRQ context!\n", irq);

 if (!desc)
  return ((void*)0);

 spin_lock_irqsave(&desc->lock, flags);





 action_ptr = &desc->action;
 for (;;) {
  action = *action_ptr;

  if (!action) {
   WARN(1, "Trying to free already-free IRQ %d\n", irq);
   spin_unlock_irqrestore(&desc->lock, flags);

   return ((void*)0);
  }

  if (action->dev_id == dev_id)
   break;
  action_ptr = &action->next;
 }


 *action_ptr = action->next;
 if (!desc->action) {
  desc->status |= IRQ_DISABLED;
  if (desc->chip->shutdown)
   desc->chip->shutdown(irq);
  else
   desc->chip->disable(irq);
 }







 spin_unlock_irqrestore(&desc->lock, flags);

 unregister_handler_proc(irq, action);


 synchronize_irq(irq);
 if (action->thread) {
  if (!test_bit(IRQTF_DIED, &action->thread_flags))
   kthread_stop(action->thread);
  put_task_struct(action->thread);
 }

 return action;
}
