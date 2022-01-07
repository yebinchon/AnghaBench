
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext3_reserve_window {scalar_t__ _rsv_start; scalar_t__ _rsv_end; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
typedef scalar_t__ ext3_grpblk_t ;
typedef scalar_t__ ext3_fsblk_t ;


 int BUG_ON (int) ;
 scalar_t__ EXT3_BLOCKS_PER_GROUP (struct super_block*) ;
 int EXT3_SB (struct super_block*) ;
 scalar_t__ claim_block (int ,scalar_t__,struct buffer_head*) ;
 scalar_t__ ext3_group_first_block_no (struct super_block*,int) ;
 scalar_t__ ext3_test_allocatable (scalar_t__,struct buffer_head*) ;
 scalar_t__ find_next_usable_block (scalar_t__,struct buffer_head*,scalar_t__) ;
 int sb_bgl_lock (int ,int) ;

__attribute__((used)) static ext3_grpblk_t
ext3_try_to_allocate(struct super_block *sb, handle_t *handle, int group,
   struct buffer_head *bitmap_bh, ext3_grpblk_t grp_goal,
   unsigned long *count, struct ext3_reserve_window *my_rsv)
{
 ext3_fsblk_t group_first_block;
 ext3_grpblk_t start, end;
 unsigned long num = 0;


 if (my_rsv) {
  group_first_block = ext3_group_first_block_no(sb, group);
  if (my_rsv->_rsv_start >= group_first_block)
   start = my_rsv->_rsv_start - group_first_block;
  else

   start = 0;
  end = my_rsv->_rsv_end - group_first_block + 1;
  if (end > EXT3_BLOCKS_PER_GROUP(sb))

   end = EXT3_BLOCKS_PER_GROUP(sb);
  if ((start <= grp_goal) && (grp_goal < end))
   start = grp_goal;
  else
   grp_goal = -1;
 } else {
  if (grp_goal > 0)
   start = grp_goal;
  else
   start = 0;
  end = EXT3_BLOCKS_PER_GROUP(sb);
 }

 BUG_ON(start > EXT3_BLOCKS_PER_GROUP(sb));

repeat:
 if (grp_goal < 0 || !ext3_test_allocatable(grp_goal, bitmap_bh)) {
  grp_goal = find_next_usable_block(start, bitmap_bh, end);
  if (grp_goal < 0)
   goto fail_access;
  if (!my_rsv) {
   int i;

   for (i = 0; i < 7 && grp_goal > start &&
     ext3_test_allocatable(grp_goal - 1,
        bitmap_bh);
     i++, grp_goal--)
    ;
  }
 }
 start = grp_goal;

 if (!claim_block(sb_bgl_lock(EXT3_SB(sb), group),
  grp_goal, bitmap_bh)) {




  start++;
  grp_goal++;
  if (start >= end)
   goto fail_access;
  goto repeat;
 }
 num++;
 grp_goal++;
 while (num < *count && grp_goal < end
  && ext3_test_allocatable(grp_goal, bitmap_bh)
  && claim_block(sb_bgl_lock(EXT3_SB(sb), group),
    grp_goal, bitmap_bh)) {
  num++;
  grp_goal++;
 }
 *count = num;
 return grp_goal - num;
fail_access:
 *count = num;
 return -1;
}
