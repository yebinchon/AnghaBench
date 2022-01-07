
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_block_group_cache {int free_space_ctl; } ;


 int __btrfs_add_free_space (int ,int ,int ) ;

__attribute__((used)) static inline int
btrfs_add_free_space(struct btrfs_block_group_cache *block_group,
       u64 bytenr, u64 size)
{
 return __btrfs_add_free_space(block_group->free_space_ctl,
          bytenr, size);
}
