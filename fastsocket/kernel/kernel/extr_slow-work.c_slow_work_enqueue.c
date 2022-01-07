
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct TYPE_2__ {struct list_head* prev; } ;
struct slow_work {TYPE_1__ link; int flags; int ops; } ;
struct list_head {int dummy; } ;


 int BUG_ON (int) ;
 int ECANCELED ;
 int SLOW_WORK_CANCELLING ;
 int SLOW_WORK_ENQ_DEFERRED ;
 int SLOW_WORK_EXECUTING ;
 int SLOW_WORK_PENDING ;
 int SLOW_WORK_VERY_SLOW ;
 int list_add_tail (TYPE_1__*,struct list_head*) ;
 int set_bit (int ,int *) ;
 int slow_work_get_ref (struct slow_work*) ;
 int slow_work_mark_time (struct slow_work*) ;
 struct list_head slow_work_queue ;
 int slow_work_queue_lock ;
 int slow_work_queue_waits_for_occupation ;
 int slow_work_thread_wq ;
 scalar_t__ slow_work_user_count ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit_lock (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (scalar_t__) ;
 struct list_head vslow_work_queue ;
 int vslow_work_queue_waits_for_occupation ;
 int wake_up (int *) ;

int slow_work_enqueue(struct slow_work *work)
{
 wait_queue_head_t *wfo_wq;
 struct list_head *queue;
 unsigned long flags;
 int ret;

 if (test_bit(SLOW_WORK_CANCELLING, &work->flags))
  return -ECANCELED;

 BUG_ON(slow_work_user_count <= 0);
 BUG_ON(!work);
 BUG_ON(!work->ops);
 if (!test_and_set_bit_lock(SLOW_WORK_PENDING, &work->flags)) {
  if (test_bit(SLOW_WORK_VERY_SLOW, &work->flags)) {
   wfo_wq = &vslow_work_queue_waits_for_occupation;
   queue = &vslow_work_queue;
  } else {
   wfo_wq = &slow_work_queue_waits_for_occupation;
   queue = &slow_work_queue;
  }

  spin_lock_irqsave(&slow_work_queue_lock, flags);

  if (unlikely(test_bit(SLOW_WORK_CANCELLING, &work->flags)))
   goto cancelled;
  if (test_bit(SLOW_WORK_EXECUTING, &work->flags)) {
   set_bit(SLOW_WORK_ENQ_DEFERRED, &work->flags);
  } else {
   ret = slow_work_get_ref(work);
   if (ret < 0)
    goto failed;
   slow_work_mark_time(work);
   list_add_tail(&work->link, queue);
   wake_up(&slow_work_thread_wq);



   if (work->link.prev == queue)
    wake_up(wfo_wq);
  }

  spin_unlock_irqrestore(&slow_work_queue_lock, flags);
 }
 return 0;

cancelled:
 ret = -ECANCELED;
failed:
 spin_unlock_irqrestore(&slow_work_queue_lock, flags);
 return ret;
}
