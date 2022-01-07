
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_worker_thread {int lock; TYPE_1__* workers; int worker_list; int num_pending; int pending; int prio_pending; int working; scalar_t__ idle; } ;
struct TYPE_2__ {int num_workers; int lock; } ;


 scalar_t__ atomic_read (int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int put_worker (struct btrfs_worker_thread*) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int try_worker_shutdown(struct btrfs_worker_thread *worker)
{
 int freeit = 0;

 spin_lock_irq(&worker->lock);
 spin_lock(&worker->workers->lock);
 if (worker->workers->num_workers > 1 &&
     worker->idle &&
     !worker->working &&
     !list_empty(&worker->worker_list) &&
     list_empty(&worker->prio_pending) &&
     list_empty(&worker->pending) &&
     atomic_read(&worker->num_pending) == 0) {
  freeit = 1;
  list_del_init(&worker->worker_list);
  worker->workers->num_workers--;
 }
 spin_unlock(&worker->workers->lock);
 spin_unlock_irq(&worker->lock);

 if (freeit)
  put_worker(worker);
 return freeit;
}
