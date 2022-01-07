
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_workers {scalar_t__ num_workers_starting; int lock; scalar_t__ num_workers; int idle_list; int name; } ;
struct btrfs_worker_thread {int idle; int worker_list; int task; struct btrfs_workers* workers; int refs; int num_pending; int lock; int prio_pending; int pending; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WARN_ON (int) ;
 int atomic_set (int *,int) ;
 int kfree (struct btrfs_worker_thread*) ;
 int kthread_run (int ,struct btrfs_worker_thread*,char*,int ,scalar_t__) ;
 struct btrfs_worker_thread* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int worker_loop ;

__attribute__((used)) static int __btrfs_start_workers(struct btrfs_workers *workers)
{
 struct btrfs_worker_thread *worker;
 int ret = 0;

 worker = kzalloc(sizeof(*worker), GFP_NOFS);
 if (!worker) {
  ret = -ENOMEM;
  goto fail;
 }

 INIT_LIST_HEAD(&worker->pending);
 INIT_LIST_HEAD(&worker->prio_pending);
 INIT_LIST_HEAD(&worker->worker_list);
 spin_lock_init(&worker->lock);

 atomic_set(&worker->num_pending, 0);
 atomic_set(&worker->refs, 1);
 worker->workers = workers;
 worker->task = kthread_run(worker_loop, worker,
       "btrfs-%s-%d", workers->name,
       workers->num_workers + 1);
 if (IS_ERR(worker->task)) {
  ret = PTR_ERR(worker->task);
  kfree(worker);
  goto fail;
 }
 spin_lock_irq(&workers->lock);
 list_add_tail(&worker->worker_list, &workers->idle_list);
 worker->idle = 1;
 workers->num_workers++;
 workers->num_workers_starting--;
 WARN_ON(workers->num_workers_starting < 0);
 spin_unlock_irq(&workers->lock);

 return 0;
fail:
 spin_lock_irq(&workers->lock);
 workers->num_workers_starting--;
 spin_unlock_irq(&workers->lock);
 return ret;
}
