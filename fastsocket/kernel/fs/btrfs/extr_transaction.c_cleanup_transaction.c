
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btrfs_transaction {int list; } ;
struct btrfs_trans_handle {int use_count; struct btrfs_transaction* transaction; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {struct btrfs_trans_handle* journal_info; } ;
struct TYPE_3__ {int trans_lock; scalar_t__ trans_no_join; struct btrfs_transaction* running_transaction; } ;


 int WARN_ON (int) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,struct btrfs_root*,int) ;
 int btrfs_cleanup_one_transaction (struct btrfs_transaction*,struct btrfs_root*) ;
 int btrfs_scrub_continue (struct btrfs_root*) ;
 int btrfs_trans_handle_cachep ;
 TYPE_2__* current ;
 int kmem_cache_free (int ,struct btrfs_trans_handle*) ;
 int list_del_init (int *) ;
 int put_transaction (struct btrfs_transaction*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_btrfs_transaction_commit (struct btrfs_root*) ;

__attribute__((used)) static void cleanup_transaction(struct btrfs_trans_handle *trans,
    struct btrfs_root *root, int err)
{
 struct btrfs_transaction *cur_trans = trans->transaction;

 WARN_ON(trans->use_count > 1);

 btrfs_abort_transaction(trans, root, err);

 spin_lock(&root->fs_info->trans_lock);
 list_del_init(&cur_trans->list);
 if (cur_trans == root->fs_info->running_transaction) {
  root->fs_info->running_transaction = ((void*)0);
  root->fs_info->trans_no_join = 0;
 }
 spin_unlock(&root->fs_info->trans_lock);

 btrfs_cleanup_one_transaction(trans->transaction, root);

 put_transaction(cur_trans);
 put_transaction(cur_trans);

 trace_btrfs_transaction_commit(root);

 btrfs_scrub_continue(root);

 if (current->journal_info == trans)
  current->journal_info = ((void*)0);

 kmem_cache_free(btrfs_trans_handle_cachep, trans);
}
