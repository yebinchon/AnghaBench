
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_transaction {int in_commit; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {int transaction_blocked_wait; } ;


 int wait_event (int ,int ) ;

__attribute__((used)) static void wait_current_trans_commit_start(struct btrfs_root *root,
         struct btrfs_transaction *trans)
{
 wait_event(root->fs_info->transaction_blocked_wait, trans->in_commit);
}
