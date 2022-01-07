
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_worker_thread {int working; int lock; int task; TYPE_1__* workers; int worker_list; scalar_t__ idle; int num_pending; int pending; int prio_pending; } ;
struct btrfs_work {int list; int flags; struct btrfs_worker_thread* worker; } ;
struct TYPE_2__ {int lock; int worker_list; } ;


 int WORK_HIGH_PRIO_BIT ;
 int WORK_QUEUED_BIT ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int list_move_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_process (int ) ;

void btrfs_requeue_work(struct btrfs_work *work)
{
 struct btrfs_worker_thread *worker = work->worker;
 unsigned long flags;
 int wake = 0;

 if (test_and_set_bit(WORK_QUEUED_BIT, &work->flags))
  return;

 spin_lock_irqsave(&worker->lock, flags);
 if (test_bit(WORK_HIGH_PRIO_BIT, &work->flags))
  list_add_tail(&work->list, &worker->prio_pending);
 else
  list_add_tail(&work->list, &worker->pending);
 atomic_inc(&worker->num_pending);




 if (worker->idle) {
  spin_lock(&worker->workers->lock);
  worker->idle = 0;
  list_move_tail(&worker->worker_list,
         &worker->workers->worker_list);
  spin_unlock(&worker->workers->lock);
 }
 if (!worker->working) {
  wake = 1;
  worker->working = 1;
 }

 if (wake)
  wake_up_process(worker->task);
 spin_unlock_irqrestore(&worker->lock, flags);
}
