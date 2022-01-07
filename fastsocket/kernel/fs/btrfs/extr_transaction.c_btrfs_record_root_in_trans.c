
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {scalar_t__ last_trans; TYPE_1__* fs_info; int in_trans_setup; int ref_cows; } ;
struct TYPE_2__ {int reloc_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int record_root_in_trans (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int smp_rmb () ;

int btrfs_record_root_in_trans(struct btrfs_trans_handle *trans,
          struct btrfs_root *root)
{
 if (!root->ref_cows)
  return 0;





 smp_rmb();
 if (root->last_trans == trans->transid &&
     !root->in_trans_setup)
  return 0;

 mutex_lock(&root->fs_info->reloc_mutex);
 record_root_in_trans(trans, root);
 mutex_unlock(&root->fs_info->reloc_mutex);

 return 0;
}
