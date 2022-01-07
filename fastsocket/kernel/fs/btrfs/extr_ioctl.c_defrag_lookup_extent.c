
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_map_tree {int lock; } ;
struct extent_map {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct TYPE_2__ {struct extent_io_tree io_tree; struct extent_map_tree extent_tree; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 scalar_t__ IS_ERR (struct extent_map*) ;
 scalar_t__ PAGE_CACHE_SIZE ;
 struct extent_map* btrfs_get_extent (struct inode*,int *,int ,scalar_t__,scalar_t__,int ) ;
 int lock_extent (struct extent_io_tree*,scalar_t__,scalar_t__) ;
 struct extent_map* lookup_extent_mapping (struct extent_map_tree*,scalar_t__,scalar_t__) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int unlock_extent (struct extent_io_tree*,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct extent_map *defrag_lookup_extent(struct inode *inode, u64 start)
{
 struct extent_map_tree *em_tree = &BTRFS_I(inode)->extent_tree;
 struct extent_io_tree *io_tree = &BTRFS_I(inode)->io_tree;
 struct extent_map *em;
 u64 len = PAGE_CACHE_SIZE;





 read_lock(&em_tree->lock);
 em = lookup_extent_mapping(em_tree, start, len);
 read_unlock(&em_tree->lock);

 if (!em) {

  lock_extent(io_tree, start, start + len - 1);
  em = btrfs_get_extent(inode, ((void*)0), 0, start, len, 0);
  unlock_extent(io_tree, start, start + len - 1);

  if (IS_ERR(em))
   return ((void*)0);
 }

 return em;
}
