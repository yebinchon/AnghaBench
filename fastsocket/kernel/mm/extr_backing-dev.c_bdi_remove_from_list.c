
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int bdi_list; } ;


 int bdi_lock ;
 int list_del_rcu (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu_expedited () ;

__attribute__((used)) static void bdi_remove_from_list(struct backing_dev_info *bdi)
{
 spin_lock_bh(&bdi_lock);
 list_del_rcu(&bdi->bdi_list);
 spin_unlock_bh(&bdi_lock);

 synchronize_rcu_expedited();
}
