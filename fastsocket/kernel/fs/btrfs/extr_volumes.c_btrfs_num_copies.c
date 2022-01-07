
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct map_lookup {int type; int num_stripes; int sub_stripes; } ;
struct extent_map_tree {int lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; scalar_t__ bdev; } ;
struct btrfs_mapping_tree {struct extent_map_tree map_tree; } ;


 int BTRFS_BLOCK_GROUP_DUP ;
 int BTRFS_BLOCK_GROUP_RAID1 ;
 int BTRFS_BLOCK_GROUP_RAID10 ;
 int BUG_ON (int) ;
 int free_extent_map (struct extent_map*) ;
 struct extent_map* lookup_extent_mapping (struct extent_map_tree*,scalar_t__,scalar_t__) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

int btrfs_num_copies(struct btrfs_mapping_tree *map_tree, u64 logical, u64 len)
{
 struct extent_map *em;
 struct map_lookup *map;
 struct extent_map_tree *em_tree = &map_tree->map_tree;
 int ret;

 read_lock(&em_tree->lock);
 em = lookup_extent_mapping(em_tree, logical, len);
 read_unlock(&em_tree->lock);
 BUG_ON(!em);

 BUG_ON(em->start > logical || em->start + em->len < logical);
 map = (struct map_lookup *)em->bdev;
 if (map->type & (BTRFS_BLOCK_GROUP_DUP | BTRFS_BLOCK_GROUP_RAID1))
  ret = map->num_stripes;
 else if (map->type & BTRFS_BLOCK_GROUP_RAID10)
  ret = map->sub_stripes;
 else
  ret = 1;
 free_extent_map(em);
 return ret;
}
