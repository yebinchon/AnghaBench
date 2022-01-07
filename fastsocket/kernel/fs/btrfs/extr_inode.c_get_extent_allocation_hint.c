
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_map_tree {int lock; } ;
struct extent_map {scalar_t__ block_start; } ;
struct TYPE_2__ {struct extent_map_tree extent_tree; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 scalar_t__ EXTENT_MAP_LAST_BYTE ;
 int free_extent_map (struct extent_map*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct extent_map* search_extent_mapping (struct extent_map_tree*,scalar_t__,scalar_t__) ;

__attribute__((used)) static u64 get_extent_allocation_hint(struct inode *inode, u64 start,
          u64 num_bytes)
{
 struct extent_map_tree *em_tree = &BTRFS_I(inode)->extent_tree;
 struct extent_map *em;
 u64 alloc_hint = 0;

 read_lock(&em_tree->lock);
 em = search_extent_mapping(em_tree, start, num_bytes);
 if (em) {





  if (em->block_start >= EXTENT_MAP_LAST_BYTE) {
   free_extent_map(em);
   em = search_extent_mapping(em_tree, 0, 0);
   if (em && em->block_start < EXTENT_MAP_LAST_BYTE)
    alloc_hint = em->block_start;
   if (em)
    free_extent_map(em);
  } else {
   alloc_hint = em->block_start;
   free_extent_map(em);
  }
 }
 read_unlock(&em_tree->lock);

 return alloc_hint;
}
