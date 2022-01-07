
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct TYPE_2__ {struct list_head* prev; } ;
struct slow_work {TYPE_1__ link; int flags; } ;
struct list_head {int dummy; } ;


 int SLOW_WORK_CANCELLING ;
 int SLOW_WORK_DELAYED ;
 int SLOW_WORK_ENQ_DEFERRED ;
 int SLOW_WORK_EXECUTING ;
 int SLOW_WORK_VERY_SLOW ;
 int clear_bit (int ,int *) ;
 scalar_t__ likely (int) ;
 int list_add_tail (TYPE_1__*,struct list_head*) ;
 int set_bit (int ,int *) ;
 int slow_work_mark_time (struct slow_work*) ;
 int slow_work_put_ref (struct slow_work*) ;
 struct list_head slow_work_queue ;
 int slow_work_queue_lock ;
 int slow_work_queue_waits_for_occupation ;
 int slow_work_thread_wq ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 struct list_head vslow_work_queue ;
 int vslow_work_queue_waits_for_occupation ;
 int wake_up (int *) ;

__attribute__((used)) static void delayed_slow_work_timer(unsigned long data)
{
 wait_queue_head_t *wfo_wq;
 struct list_head *queue;
 struct slow_work *work = (struct slow_work *) data;
 unsigned long flags;
 bool queued = 0, put = 0, first = 0;

 if (test_bit(SLOW_WORK_VERY_SLOW, &work->flags)) {
  wfo_wq = &vslow_work_queue_waits_for_occupation;
  queue = &vslow_work_queue;
 } else {
  wfo_wq = &slow_work_queue_waits_for_occupation;
  queue = &slow_work_queue;
 }

 spin_lock_irqsave(&slow_work_queue_lock, flags);
 if (likely(!test_bit(SLOW_WORK_CANCELLING, &work->flags))) {
  clear_bit(SLOW_WORK_DELAYED, &work->flags);

  if (test_bit(SLOW_WORK_EXECUTING, &work->flags)) {


   set_bit(SLOW_WORK_ENQ_DEFERRED, &work->flags);
   put = 1;
  } else {
   slow_work_mark_time(work);
   list_add_tail(&work->link, queue);
   queued = 1;
   if (work->link.prev == queue)
    first = 1;
  }
 }

 spin_unlock_irqrestore(&slow_work_queue_lock, flags);
 if (put)
  slow_work_put_ref(work);
 if (first)
  wake_up(wfo_wq);
 if (queued)
  wake_up(&slow_work_thread_wq);
}
