
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_workers {int order_lock; int order_list; int prio_order_list; scalar_t__ ordered; } ;
struct btrfs_worker_thread {int working; int lock; int task; int pending; int prio_pending; } ;
struct btrfs_work {int list; int flags; int order_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int WORK_HIGH_PRIO_BIT ;
 int WORK_QUEUED_BIT ;
 int check_busy_worker (struct btrfs_worker_thread*) ;
 struct btrfs_worker_thread* find_worker (struct btrfs_workers*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_process (int ) ;

void btrfs_queue_worker(struct btrfs_workers *workers, struct btrfs_work *work)
{
 struct btrfs_worker_thread *worker;
 unsigned long flags;
 int wake = 0;


 if (test_and_set_bit(WORK_QUEUED_BIT, &work->flags))
  return;

 worker = find_worker(workers);
 if (workers->ordered) {




  spin_lock(&workers->order_lock);
  if (test_bit(WORK_HIGH_PRIO_BIT, &work->flags)) {
   list_add_tail(&work->order_list,
          &workers->prio_order_list);
  } else {
   list_add_tail(&work->order_list, &workers->order_list);
  }
  spin_unlock(&workers->order_lock);
 } else {
  INIT_LIST_HEAD(&work->order_list);
 }

 spin_lock_irqsave(&worker->lock, flags);

 if (test_bit(WORK_HIGH_PRIO_BIT, &work->flags))
  list_add_tail(&work->list, &worker->prio_pending);
 else
  list_add_tail(&work->list, &worker->pending);
 check_busy_worker(worker);





 if (!worker->working)
  wake = 1;
 worker->working = 1;

 if (wake)
  wake_up_process(worker->task);
 spin_unlock_irqrestore(&worker->lock, flags);
}
