
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_list {int flags; } ;
struct btrfs_fs_info {int tree_mod_seq_lock; } ;


 int __get_tree_mod_seq (struct btrfs_fs_info*,struct seq_list*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_get_tree_mod_seq(struct btrfs_fs_info *fs_info,
       struct seq_list *elem)
{
 elem->flags = 1;
 spin_lock(&fs_info->tree_mod_seq_lock);
 __get_tree_mod_seq(fs_info, elem);
 spin_unlock(&fs_info->tree_mod_seq_lock);
}
