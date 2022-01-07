
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int dummy; } ;


 struct btrfs_block_group_cache* block_group_cache_tree_search (struct btrfs_fs_info*,int ,int ) ;

__attribute__((used)) static struct btrfs_block_group_cache *
btrfs_lookup_first_block_group(struct btrfs_fs_info *info, u64 bytenr)
{
 struct btrfs_block_group_cache *cache;

 cache = block_group_cache_tree_search(info, bytenr, 0);

 return cache;
}
