
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sched_param {int sched_priority; } ;
struct irqaction {int irq; int dev_id; int (* thread_fn ) (int ,int ) ;} ;
struct irq_desc {int status; int wait_for_threads; int threads_active; int lock; } ;
struct TYPE_3__ {struct irqaction* irqaction; } ;


 int IRQ_DISABLED ;
 int IRQ_ONESHOT ;
 int IRQ_PENDING ;
 int MAX_USER_RT_PRIO ;
 int SCHED_FIFO ;
 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 TYPE_1__* current ;
 int irq_finalize_oneshot (int ,struct irq_desc*) ;
 int irq_thread_check_affinity (struct irq_desc*,struct irqaction*) ;
 struct irq_desc* irq_to_desc (int ) ;
 int irq_wait_for_interrupt (struct irqaction*) ;
 int sched_setscheduler (TYPE_1__*,int ,struct sched_param*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int ,int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int irq_thread(void *data)
{
 struct sched_param param = { .sched_priority = MAX_USER_RT_PRIO/2, };
 struct irqaction *action = data;
 struct irq_desc *desc = irq_to_desc(action->irq);
 int wake, oneshot = desc->status & IRQ_ONESHOT;

 sched_setscheduler(current, SCHED_FIFO, &param);
 current->irqaction = action;

 while (!irq_wait_for_interrupt(action)) {

  irq_thread_check_affinity(desc, action);

  atomic_inc(&desc->threads_active);

  spin_lock_irq(&desc->lock);
  if (unlikely(desc->status & IRQ_DISABLED)) {







   desc->status |= IRQ_PENDING;
   spin_unlock_irq(&desc->lock);
  } else {
   spin_unlock_irq(&desc->lock);

   action->thread_fn(action->irq, action->dev_id);

   if (oneshot)
    irq_finalize_oneshot(action->irq, desc);
  }

  wake = atomic_dec_and_test(&desc->threads_active);

  if (wake && waitqueue_active(&desc->wait_for_threads))
   wake_up(&desc->wait_for_threads);
 }





 current->irqaction = ((void*)0);
 return 0;
}
