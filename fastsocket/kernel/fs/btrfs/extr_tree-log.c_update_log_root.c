
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int log_transid; int root_item; int root_key; TYPE_1__* fs_info; } ;
struct TYPE_2__ {int log_root_tree; } ;


 int btrfs_insert_root (struct btrfs_trans_handle*,int ,int *,int *) ;
 int btrfs_update_root (struct btrfs_trans_handle*,int ,int *,int *) ;

__attribute__((used)) static int update_log_root(struct btrfs_trans_handle *trans,
      struct btrfs_root *log)
{
 int ret;

 if (log->log_transid == 1) {

  ret = btrfs_insert_root(trans, log->fs_info->log_root_tree,
    &log->root_key, &log->root_item);
 } else {
  ret = btrfs_update_root(trans, log->fs_info->log_root_tree,
    &log->root_key, &log->root_item);
 }
 return ret;
}
