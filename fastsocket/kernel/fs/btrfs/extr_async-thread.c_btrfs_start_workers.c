
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_workers {int lock; int num_workers_starting; } ;


 int __btrfs_start_workers (struct btrfs_workers*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int btrfs_start_workers(struct btrfs_workers *workers)
{
 spin_lock_irq(&workers->lock);
 workers->num_workers_starting++;
 spin_unlock_irq(&workers->lock);
 return __btrfs_start_workers(workers);
}
