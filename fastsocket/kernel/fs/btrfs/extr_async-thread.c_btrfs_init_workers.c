
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_workers {int max_workers; int idle_thresh; char* name; struct btrfs_workers* atomic_worker_start; scalar_t__ atomic_start_pending; scalar_t__ ordered; int order_lock; int lock; int prio_order_list; int order_list; int idle_list; int worker_list; scalar_t__ num_workers_starting; scalar_t__ num_workers; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

void btrfs_init_workers(struct btrfs_workers *workers, char *name, int max,
   struct btrfs_workers *async_helper)
{
 workers->num_workers = 0;
 workers->num_workers_starting = 0;
 INIT_LIST_HEAD(&workers->worker_list);
 INIT_LIST_HEAD(&workers->idle_list);
 INIT_LIST_HEAD(&workers->order_list);
 INIT_LIST_HEAD(&workers->prio_order_list);
 spin_lock_init(&workers->lock);
 spin_lock_init(&workers->order_lock);
 workers->max_workers = max;
 workers->idle_thresh = 32;
 workers->name = name;
 workers->ordered = 0;
 workers->atomic_start_pending = 0;
 workers->atomic_worker_start = async_helper;
}
