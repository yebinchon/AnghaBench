
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slow_work {int flags; int ops; } ;
struct TYPE_2__ {unsigned long data; int function; scalar_t__ expires; } ;
struct delayed_slow_work {TYPE_1__ timer; struct slow_work work; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int ECANCELED ;
 int SLOW_WORK_CANCELLING ;
 int SLOW_WORK_DELAYED ;
 int SLOW_WORK_PENDING ;
 int add_timer (TYPE_1__*) ;
 int delayed_slow_work_timer ;
 scalar_t__ jiffies ;
 int slow_work_enqueue (struct slow_work*) ;
 int slow_work_get_ref (struct slow_work*) ;
 int slow_work_queue_lock ;
 scalar_t__ slow_work_user_count ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_and_set_bit_lock (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int delayed_slow_work_enqueue(struct delayed_slow_work *dwork,
         unsigned long delay)
{
 struct slow_work *work = &dwork->work;
 unsigned long flags;
 int ret;

 if (delay == 0)
  return slow_work_enqueue(&dwork->work);

 BUG_ON(slow_work_user_count <= 0);
 BUG_ON(!work);
 BUG_ON(!work->ops);

 if (test_bit(SLOW_WORK_CANCELLING, &work->flags))
  return -ECANCELED;

 if (!test_and_set_bit_lock(SLOW_WORK_PENDING, &work->flags)) {
  spin_lock_irqsave(&slow_work_queue_lock, flags);

  if (test_bit(SLOW_WORK_CANCELLING, &work->flags))
   goto cancelled;


  ret = slow_work_get_ref(work);
  if (ret < 0)
   goto cant_get_ref;

  if (test_and_set_bit(SLOW_WORK_DELAYED, &work->flags))
   BUG();
  dwork->timer.expires = jiffies + delay;
  dwork->timer.data = (unsigned long) work;
  dwork->timer.function = delayed_slow_work_timer;
  add_timer(&dwork->timer);

  spin_unlock_irqrestore(&slow_work_queue_lock, flags);
 }

 return 0;

cancelled:
 ret = -ECANCELED;
cant_get_ref:
 spin_unlock_irqrestore(&slow_work_queue_lock, flags);
 return ret;
}
