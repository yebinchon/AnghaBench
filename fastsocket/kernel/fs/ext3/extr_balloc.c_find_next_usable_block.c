
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ ext3_grpblk_t ;


 scalar_t__ bitmap_search_next_usable_block (scalar_t__,struct buffer_head*,scalar_t__) ;
 int ext3_debug (char*) ;
 scalar_t__ ext3_find_next_zero_bit (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ ext3_test_allocatable (scalar_t__,struct buffer_head*) ;
 char* memscan (char*,int ,scalar_t__) ;

__attribute__((used)) static ext3_grpblk_t
find_next_usable_block(ext3_grpblk_t start, struct buffer_head *bh,
   ext3_grpblk_t maxblocks)
{
 ext3_grpblk_t here, next;
 char *p, *r;

 if (start > 0) {
  ext3_grpblk_t end_goal = (start + 63) & ~63;
  if (end_goal > maxblocks)
   end_goal = maxblocks;
  here = ext3_find_next_zero_bit(bh->b_data, end_goal, start);
  if (here < end_goal && ext3_test_allocatable(here, bh))
   return here;
  ext3_debug("Bit not found near goal\n");
 }

 here = start;
 if (here < 0)
  here = 0;

 p = ((char *)bh->b_data) + (here >> 3);
 r = memscan(p, 0, ((maxblocks + 7) >> 3) - (here >> 3));
 next = (r - ((char *)bh->b_data)) << 3;

 if (next < maxblocks && next >= start && ext3_test_allocatable(next, bh))
  return next;






 here = bitmap_search_next_usable_block(here, bh, maxblocks);
 return here;
}
