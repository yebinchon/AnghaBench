
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_mapping_tree {int dummy; } ;
struct btrfs_bio {int dummy; } ;


 int __btrfs_map_block (struct btrfs_mapping_tree*,int,int ,int *,struct btrfs_bio**,int) ;

int btrfs_map_block(struct btrfs_mapping_tree *map_tree, int rw,
        u64 logical, u64 *length,
        struct btrfs_bio **bbio_ret, int mirror_num)
{
 return __btrfs_map_block(map_tree, rw, logical, length, bbio_ret,
     mirror_num);
}
