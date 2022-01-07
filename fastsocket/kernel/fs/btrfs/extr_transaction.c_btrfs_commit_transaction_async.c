
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_transaction {int use_count; } ;
struct btrfs_trans_handle {struct btrfs_transaction* transaction; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_async_commit {int work; int newtrans; struct btrfs_root* root; } ;
struct TYPE_2__ {struct btrfs_trans_handle* journal_info; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int atomic_inc (int *) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int btrfs_join_transaction (struct btrfs_root*) ;
 TYPE_1__* current ;
 int do_async_commit ;
 int kfree (struct btrfs_async_commit*) ;
 struct btrfs_async_commit* kmalloc (int,int ) ;
 int put_transaction (struct btrfs_transaction*) ;
 int schedule_delayed_work (int *,int ) ;
 int wait_current_trans_commit_start (struct btrfs_root*,struct btrfs_transaction*) ;
 int wait_current_trans_commit_start_and_unblock (struct btrfs_root*,struct btrfs_transaction*) ;

int btrfs_commit_transaction_async(struct btrfs_trans_handle *trans,
       struct btrfs_root *root,
       int wait_for_unblock)
{
 struct btrfs_async_commit *ac;
 struct btrfs_transaction *cur_trans;

 ac = kmalloc(sizeof(*ac), GFP_NOFS);
 if (!ac)
  return -ENOMEM;

 INIT_DELAYED_WORK(&ac->work, do_async_commit);
 ac->root = root;
 ac->newtrans = btrfs_join_transaction(root);
 if (IS_ERR(ac->newtrans)) {
  int err = PTR_ERR(ac->newtrans);
  kfree(ac);
  return err;
 }


 cur_trans = trans->transaction;
 atomic_inc(&cur_trans->use_count);

 btrfs_end_transaction(trans, root);
 schedule_delayed_work(&ac->work, 0);


 if (wait_for_unblock)
  wait_current_trans_commit_start_and_unblock(root, cur_trans);
 else
  wait_current_trans_commit_start(root, cur_trans);

 if (current->journal_info == trans)
  current->journal_info = ((void*)0);

 put_transaction(cur_trans);
 return 0;
}
