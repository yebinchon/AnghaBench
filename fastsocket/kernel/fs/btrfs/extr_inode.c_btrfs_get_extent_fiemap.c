
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct extent_map {scalar_t__ block_start; scalar_t__ start; scalar_t__ block_len; scalar_t__ orig_start; scalar_t__ len; int * bdev; } ;
struct TYPE_2__ {int io_tree; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int ENOMEM ;
 struct extent_map* ERR_PTR (int) ;
 int EXTENT_DELALLOC ;
 scalar_t__ EXTENT_MAP_DELALLOC ;
 scalar_t__ EXTENT_MAP_HOLE ;
 scalar_t__ IS_ERR (struct extent_map*) ;
 struct extent_map* alloc_extent_map () ;
 struct extent_map* btrfs_get_extent (struct inode*,struct page*,size_t,scalar_t__,scalar_t__,int) ;
 scalar_t__ count_range_bits (int *,scalar_t__*,scalar_t__,scalar_t__,int ,int) ;
 scalar_t__ extent_map_end (struct extent_map*) ;
 int free_extent_map (struct extent_map*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

struct extent_map *btrfs_get_extent_fiemap(struct inode *inode, struct page *page,
        size_t pg_offset, u64 start, u64 len,
        int create)
{
 struct extent_map *em;
 struct extent_map *hole_em = ((void*)0);
 u64 range_start = start;
 u64 end;
 u64 found;
 u64 found_end;
 int err = 0;

 em = btrfs_get_extent(inode, page, pg_offset, start, len, create);
 if (IS_ERR(em))
  return em;
 if (em) {




  if (em->block_start != EXTENT_MAP_HOLE)
   return em;
  else
   hole_em = em;
 }


 end = start + len;
 if (end < start)
  end = (u64)-1;
 else
  end -= 1;

 em = ((void*)0);


 found = count_range_bits(&BTRFS_I(inode)->io_tree, &range_start,
     end, len, EXTENT_DELALLOC, 1);
 found_end = range_start + found;
 if (found_end < range_start)
  found_end = (u64)-1;





 if (range_start > end || found_end <= start) {
  em = hole_em;
  hole_em = ((void*)0);
  goto out;
 }




 range_start = max(start,range_start);
 found = found_end - range_start;

 if (found > 0) {
  u64 hole_start = start;
  u64 hole_len = len;

  em = alloc_extent_map();
  if (!em) {
   err = -ENOMEM;
   goto out;
  }
  if (hole_em) {
   u64 calc_end = extent_map_end(hole_em);

   if (calc_end <= start || (hole_em->start > end)) {
    free_extent_map(hole_em);
    hole_em = ((void*)0);
   } else {
    hole_start = max(hole_em->start, start);
    hole_len = calc_end - hole_start;
   }
  }
  em->bdev = ((void*)0);
  if (hole_em && range_start > hole_start) {




   em->len = min(hole_len,
          range_start - hole_start);
   em->start = hole_start;
   em->orig_start = hole_start;




   em->block_start = hole_em->block_start;
   em->block_len = hole_len;
  } else {
   em->start = range_start;
   em->len = found;
   em->orig_start = range_start;
   em->block_start = EXTENT_MAP_DELALLOC;
   em->block_len = found;
  }
 } else if (hole_em) {
  return hole_em;
 }
out:

 free_extent_map(hole_em);
 if (err) {
  free_extent_map(em);
  return ERR_PTR(err);
 }
 return em;
}
