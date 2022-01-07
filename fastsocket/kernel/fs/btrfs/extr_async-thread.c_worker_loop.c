
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct btrfs_worker_thread {scalar_t__ working; int lock; int prio_pending; int pending; int workers; int num_pending; } ;
struct btrfs_work {int (* func ) (struct btrfs_work*) ;struct btrfs_worker_thread* worker; int flags; int list; } ;


 int HZ ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int WORK_QUEUED_BIT ;
 int __set_current_state (int ) ;
 int atomic_dec (int *) ;
 int check_idle_worker (struct btrfs_worker_thread*) ;
 int check_pending_worker_creates (struct btrfs_worker_thread*) ;
 int clear_bit (int ,int *) ;
 int cond_resched () ;
 int cpu_relax () ;
 int current ;
 scalar_t__ freezing (int ) ;
 struct btrfs_work* get_next_work (struct btrfs_worker_thread*,struct list_head*,struct list_head*) ;
 scalar_t__ kthread_should_stop () ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int run_ordered_completions (int ,struct btrfs_work*) ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 int smp_mb () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct btrfs_work*) ;
 int try_to_freeze () ;
 scalar_t__ try_worker_shutdown (struct btrfs_worker_thread*) ;

__attribute__((used)) static int worker_loop(void *arg)
{
 struct btrfs_worker_thread *worker = arg;
 struct list_head head;
 struct list_head prio_head;
 struct btrfs_work *work;

 INIT_LIST_HEAD(&head);
 INIT_LIST_HEAD(&prio_head);

 do {
again:
  while (1) {


   work = get_next_work(worker, &prio_head, &head);
   if (!work)
    break;

   list_del(&work->list);
   clear_bit(WORK_QUEUED_BIT, &work->flags);

   work->worker = worker;

   work->func(work);

   atomic_dec(&worker->num_pending);




   run_ordered_completions(worker->workers, work);

   check_pending_worker_creates(worker);
   cond_resched();
  }

  spin_lock_irq(&worker->lock);
  check_idle_worker(worker);

  if (freezing(current)) {
   worker->working = 0;
   spin_unlock_irq(&worker->lock);
   try_to_freeze();
  } else {
   spin_unlock_irq(&worker->lock);
   if (!kthread_should_stop()) {
    cpu_relax();




    smp_mb();
    if (!list_empty(&worker->pending) ||
        !list_empty(&worker->prio_pending))
     continue;
    schedule_timeout(1);
    smp_mb();
    if (!list_empty(&worker->pending) ||
        !list_empty(&worker->prio_pending))
     continue;

    if (kthread_should_stop())
     break;


    spin_lock_irq(&worker->lock);
    set_current_state(TASK_INTERRUPTIBLE);
    if (!list_empty(&worker->pending) ||
        !list_empty(&worker->prio_pending)) {
     spin_unlock_irq(&worker->lock);
     set_current_state(TASK_RUNNING);
     goto again;
    }





    worker->working = 0;
    spin_unlock_irq(&worker->lock);

    if (!kthread_should_stop()) {
     schedule_timeout(HZ * 120);
     if (!worker->working &&
         try_worker_shutdown(worker)) {
      return 0;
     }
    }
   }
   __set_current_state(TASK_RUNNING);
  }
 } while (!kthread_should_stop());
 return 0;
}
