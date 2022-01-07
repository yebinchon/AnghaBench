
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_space_info {int groups_sem; int * block_groups; } ;
struct btrfs_block_group_cache {int list; } ;


 int down_write (int *) ;
 int get_block_group_index (struct btrfs_block_group_cache*) ;
 int list_add_tail (int *,int *) ;
 int up_write (int *) ;

__attribute__((used)) static void __link_block_group(struct btrfs_space_info *space_info,
          struct btrfs_block_group_cache *cache)
{
 int index = get_block_group_index(cache);

 down_write(&space_info->groups_sem);
 list_add_tail(&cache->list, &space_info->block_groups[index]);
 up_write(&space_info->groups_sem);
}
