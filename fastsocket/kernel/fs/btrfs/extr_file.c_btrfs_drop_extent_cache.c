
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_map_tree {int lock; } ;
struct extent_map {unsigned long flags; scalar_t__ start; scalar_t__ len; scalar_t__ block_start; scalar_t__ orig_start; scalar_t__ block_len; int compress_type; int bdev; } ;
struct TYPE_2__ {struct extent_map_tree extent_tree; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BUG_ON (int) ;
 int EXTENT_FLAG_COMPRESSED ;
 int EXTENT_FLAG_PINNED ;
 scalar_t__ EXTENT_MAP_LAST_BYTE ;
 int WARN_ON (int) ;
 int add_extent_mapping (struct extent_map_tree*,struct extent_map*) ;
 struct extent_map* alloc_extent_map () ;
 int clear_bit (int ,unsigned long*) ;
 int free_extent_map (struct extent_map*) ;
 struct extent_map* lookup_extent_mapping (struct extent_map_tree*,scalar_t__,scalar_t__) ;
 int remove_extent_mapping (struct extent_map_tree*,struct extent_map*) ;
 int test_bit (int ,unsigned long*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int btrfs_drop_extent_cache(struct inode *inode, u64 start, u64 end,
       int skip_pinned)
{
 struct extent_map *em;
 struct extent_map *split = ((void*)0);
 struct extent_map *split2 = ((void*)0);
 struct extent_map_tree *em_tree = &BTRFS_I(inode)->extent_tree;
 u64 len = end - start + 1;
 int ret;
 int testend = 1;
 unsigned long flags;
 int compressed = 0;

 WARN_ON(end < start);
 if (end == (u64)-1) {
  len = (u64)-1;
  testend = 0;
 }
 while (1) {
  if (!split)
   split = alloc_extent_map();
  if (!split2)
   split2 = alloc_extent_map();
  BUG_ON(!split || !split2);

  write_lock(&em_tree->lock);
  em = lookup_extent_mapping(em_tree, start, len);
  if (!em) {
   write_unlock(&em_tree->lock);
   break;
  }
  flags = em->flags;
  if (skip_pinned && test_bit(EXTENT_FLAG_PINNED, &em->flags)) {
   if (testend && em->start + em->len >= start + len) {
    free_extent_map(em);
    write_unlock(&em_tree->lock);
    break;
   }
   start = em->start + em->len;
   if (testend)
    len = start + len - (em->start + em->len);
   free_extent_map(em);
   write_unlock(&em_tree->lock);
   continue;
  }
  compressed = test_bit(EXTENT_FLAG_COMPRESSED, &em->flags);
  clear_bit(EXTENT_FLAG_PINNED, &em->flags);
  remove_extent_mapping(em_tree, em);

  if (em->block_start < EXTENT_MAP_LAST_BYTE &&
      em->start < start) {
   split->start = em->start;
   split->len = start - em->start;
   split->orig_start = em->orig_start;
   split->block_start = em->block_start;

   if (compressed)
    split->block_len = em->block_len;
   else
    split->block_len = split->len;

   split->bdev = em->bdev;
   split->flags = flags;
   split->compress_type = em->compress_type;
   ret = add_extent_mapping(em_tree, split);
   BUG_ON(ret);
   free_extent_map(split);
   split = split2;
   split2 = ((void*)0);
  }
  if (em->block_start < EXTENT_MAP_LAST_BYTE &&
      testend && em->start + em->len > start + len) {
   u64 diff = start + len - em->start;

   split->start = start + len;
   split->len = em->start + em->len - (start + len);
   split->bdev = em->bdev;
   split->flags = flags;
   split->compress_type = em->compress_type;

   if (compressed) {
    split->block_len = em->block_len;
    split->block_start = em->block_start;
    split->orig_start = em->orig_start;
   } else {
    split->block_len = split->len;
    split->block_start = em->block_start + diff;
    split->orig_start = split->start;
   }

   ret = add_extent_mapping(em_tree, split);
   BUG_ON(ret);
   free_extent_map(split);
   split = ((void*)0);
  }
  write_unlock(&em_tree->lock);


  free_extent_map(em);

  free_extent_map(em);
 }
 if (split)
  free_extent_map(split);
 if (split2)
  free_extent_map(split2);
 return 0;
}
