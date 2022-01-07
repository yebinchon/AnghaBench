
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func; } ;
struct worker_start {TYPE_1__ work; struct btrfs_workers* queue; } ;
struct btrfs_workers {scalar_t__ num_workers; scalar_t__ num_workers_starting; scalar_t__ max_workers; int lock; int atomic_worker_start; scalar_t__ atomic_start_pending; } ;
struct btrfs_worker_thread {struct btrfs_workers* workers; } ;


 int GFP_NOFS ;
 int btrfs_queue_worker (int ,TYPE_1__*) ;
 int kfree (struct worker_start*) ;
 struct worker_start* kzalloc (int,int ) ;
 int rmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_new_worker_func ;

__attribute__((used)) static void check_pending_worker_creates(struct btrfs_worker_thread *worker)
{
 struct btrfs_workers *workers = worker->workers;
 struct worker_start *start;
 unsigned long flags;

 rmb();
 if (!workers->atomic_start_pending)
  return;

 start = kzalloc(sizeof(*start), GFP_NOFS);
 if (!start)
  return;

 start->work.func = start_new_worker_func;
 start->queue = workers;

 spin_lock_irqsave(&workers->lock, flags);
 if (!workers->atomic_start_pending)
  goto out;

 workers->atomic_start_pending = 0;
 if (workers->num_workers + workers->num_workers_starting >=
     workers->max_workers)
  goto out;

 workers->num_workers_starting += 1;
 spin_unlock_irqrestore(&workers->lock, flags);
 btrfs_queue_worker(workers->atomic_worker_start, &start->work);
 return;

out:
 kfree(start);
 spin_unlock_irqrestore(&workers->lock, flags);
}
