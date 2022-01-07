
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_transaction {scalar_t__ blocked; int use_count; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {int trans_lock; int transaction_wait; struct btrfs_transaction* running_transaction; } ;


 int atomic_inc (int *) ;
 int put_transaction (struct btrfs_transaction*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void wait_current_trans(struct btrfs_root *root)
{
 struct btrfs_transaction *cur_trans;

 spin_lock(&root->fs_info->trans_lock);
 cur_trans = root->fs_info->running_transaction;
 if (cur_trans && cur_trans->blocked) {
  atomic_inc(&cur_trans->use_count);
  spin_unlock(&root->fs_info->trans_lock);

  wait_event(root->fs_info->transaction_wait,
      !cur_trans->blocked);
  put_transaction(cur_trans);
 } else {
  spin_unlock(&root->fs_info->trans_lock);
 }
}
