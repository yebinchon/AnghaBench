
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_worker_thread {int idle; TYPE_1__* workers; int worker_list; int num_pending; } ;
struct TYPE_2__ {int idle_thresh; int lock; int idle_list; } ;


 int atomic_read (int *) ;
 int list_empty (int *) ;
 int list_move (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void check_idle_worker(struct btrfs_worker_thread *worker)
{
 if (!worker->idle && atomic_read(&worker->num_pending) <
     worker->workers->idle_thresh / 2) {
  unsigned long flags;
  spin_lock_irqsave(&worker->workers->lock, flags);
  worker->idle = 1;


  if (!list_empty(&worker->worker_list)) {
   list_move(&worker->worker_list,
     &worker->workers->idle_list);
  }
  spin_unlock_irqrestore(&worker->workers->lock, flags);
 }
}
