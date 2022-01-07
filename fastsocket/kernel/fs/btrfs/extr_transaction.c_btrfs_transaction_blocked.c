
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_fs_info {int trans_lock; TYPE_1__* running_transaction; } ;
struct TYPE_2__ {int blocked; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_transaction_blocked(struct btrfs_fs_info *info)
{
 int ret = 0;
 spin_lock(&info->trans_lock);
 if (info->running_transaction)
  ret = info->running_transaction->blocked;
 spin_unlock(&info->trans_lock);
 return ret;
}
