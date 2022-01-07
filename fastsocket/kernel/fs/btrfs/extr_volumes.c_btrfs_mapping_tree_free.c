
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct extent_map {int bdev; } ;
struct TYPE_3__ {int lock; } ;
struct btrfs_mapping_tree {TYPE_1__ map_tree; } ;


 int free_extent_map (struct extent_map*) ;
 int kfree (int ) ;
 struct extent_map* lookup_extent_mapping (TYPE_1__*,int ,int ) ;
 int remove_extent_mapping (TYPE_1__*,struct extent_map*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void btrfs_mapping_tree_free(struct btrfs_mapping_tree *tree)
{
 struct extent_map *em;

 while (1) {
  write_lock(&tree->map_tree.lock);
  em = lookup_extent_mapping(&tree->map_tree, 0, (u64)-1);
  if (em)
   remove_extent_mapping(&tree->map_tree, em);
  write_unlock(&tree->map_tree.lock);
  if (!em)
   break;
  kfree(em->bdev);

  free_extent_map(em);

  free_extent_map(em);
 }
}
