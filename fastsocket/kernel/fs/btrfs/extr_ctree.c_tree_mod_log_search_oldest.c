
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tree_mod_elem {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;


 struct tree_mod_elem* __tree_mod_log_search (struct btrfs_fs_info*,int ,int ,int) ;

__attribute__((used)) static struct tree_mod_elem *
tree_mod_log_search_oldest(struct btrfs_fs_info *fs_info, u64 start,
      u64 min_seq)
{
 return __tree_mod_log_search(fs_info, start, min_seq, 1);
}
