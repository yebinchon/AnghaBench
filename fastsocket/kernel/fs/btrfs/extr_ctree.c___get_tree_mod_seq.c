
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_list {int list; int seq; } ;
struct btrfs_fs_info {int tree_mod_seq_list; int tree_mod_seq; } ;


 int atomic_inc_return (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void
__get_tree_mod_seq(struct btrfs_fs_info *fs_info, struct seq_list *elem)
{
 elem->seq = atomic_inc_return(&fs_info->tree_mod_seq);
 list_add_tail(&elem->list, &fs_info->tree_mod_seq_list);
}
