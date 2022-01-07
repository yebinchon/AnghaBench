
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_fs_info {int * log_root_tree; } ;


 int free_log_tree (struct btrfs_trans_handle*,int *) ;

int btrfs_free_log_root_tree(struct btrfs_trans_handle *trans,
        struct btrfs_fs_info *fs_info)
{
 if (fs_info->log_root_tree) {
  free_log_tree(trans, fs_info->log_root_tree);
  fs_info->log_root_tree = ((void*)0);
 }
 return 0;
}
