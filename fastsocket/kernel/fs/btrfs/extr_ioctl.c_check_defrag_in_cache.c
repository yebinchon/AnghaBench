
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct extent_map_tree {int lock; } ;
struct extent_map {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct TYPE_2__ {struct extent_map_tree extent_tree; struct extent_io_tree io_tree; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int EXTENT_DELALLOC ;
 int PAGE_CACHE_SIZE ;
 int count_range_bits (struct extent_io_tree*,int*,int,int,int ,int) ;
 int extent_map_end (struct extent_map*) ;
 int free_extent_map (struct extent_map*) ;
 struct extent_map* lookup_extent_mapping (struct extent_map_tree*,int,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static int check_defrag_in_cache(struct inode *inode, u64 offset, int thresh)
{
 struct extent_io_tree *io_tree = &BTRFS_I(inode)->io_tree;
 struct extent_map *em = ((void*)0);
 struct extent_map_tree *em_tree = &BTRFS_I(inode)->extent_tree;
 u64 end;

 read_lock(&em_tree->lock);
 em = lookup_extent_mapping(em_tree, offset, PAGE_CACHE_SIZE);
 read_unlock(&em_tree->lock);

 if (em) {
  end = extent_map_end(em);
  free_extent_map(em);
  if (end - offset > thresh)
   return 0;
 }

 thresh /= 2;
 end = count_range_bits(io_tree, &offset, offset + thresh,
          thresh, EXTENT_DELALLOC, 1);
 if (end >= thresh)
  return 0;
 return 1;
}
