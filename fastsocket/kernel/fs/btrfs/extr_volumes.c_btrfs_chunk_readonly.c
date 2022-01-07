
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct map_lookup {int num_stripes; TYPE_3__* stripes; } ;
struct extent_map {scalar_t__ bdev; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_8__ {int lock; } ;
struct btrfs_mapping_tree {TYPE_4__ map_tree; } ;
struct TYPE_7__ {TYPE_2__* dev; } ;
struct TYPE_6__ {int writeable; } ;
struct TYPE_5__ {struct btrfs_mapping_tree mapping_tree; } ;


 int DEGRADED ;
 scalar_t__ btrfs_test_opt (struct btrfs_root*,int ) ;
 int free_extent_map (struct extent_map*) ;
 struct extent_map* lookup_extent_mapping (TYPE_4__*,int ,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

int btrfs_chunk_readonly(struct btrfs_root *root, u64 chunk_offset)
{
 struct extent_map *em;
 struct map_lookup *map;
 struct btrfs_mapping_tree *map_tree = &root->fs_info->mapping_tree;
 int readonly = 0;
 int i;

 read_lock(&map_tree->map_tree.lock);
 em = lookup_extent_mapping(&map_tree->map_tree, chunk_offset, 1);
 read_unlock(&map_tree->map_tree.lock);
 if (!em)
  return 1;

 if (btrfs_test_opt(root, DEGRADED)) {
  free_extent_map(em);
  return 0;
 }

 map = (struct map_lookup *)em->bdev;
 for (i = 0; i < map->num_stripes; i++) {
  if (!map->stripes[i].dev->writeable) {
   readonly = 1;
   break;
  }
 }
 free_extent_map(em);
 return readonly;
}
