
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_workers {int max_workers; int lock; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void btrfs_set_max_workers(struct btrfs_workers *workers, int new_limit)
{
 spin_lock_irq(&workers->lock);
 workers->max_workers = new_limit;
 spin_unlock_irq(&workers->lock);
}
