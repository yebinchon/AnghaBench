
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext3_reserve_window_node {unsigned long rsv_goal_size; int rsv_end; int rsv_start; unsigned long rsv_alloc_hit; int rsv_window; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
typedef int ext3_grpblk_t ;
typedef int ext3_fsblk_t ;
struct TYPE_2__ {int s_rsv_window_root; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int BUG () ;
 int EXT3_BLOCKS_PER_GROUP (struct super_block*) ;
 TYPE_1__* EXT3_SB (struct super_block*) ;
 int alloc_new_reservation (struct ext3_reserve_window_node*,int,struct super_block*,unsigned int,struct buffer_head*) ;
 int ext3_group_first_block_no (struct super_block*,unsigned int) ;
 int ext3_journal_dirty_metadata (int *,struct buffer_head*) ;
 int ext3_journal_get_undo_access (int *,struct buffer_head*) ;
 int ext3_journal_release_buffer (int *,struct buffer_head*) ;
 int ext3_try_to_allocate (struct super_block*,int *,unsigned int,struct buffer_head*,int,unsigned long*,int *) ;
 int goal_in_my_reservation (int *,int,unsigned int,struct super_block*) ;
 scalar_t__ rsv_is_empty (int *) ;
 int rsv_window_dump (int *,int) ;
 int try_to_extend_reservation (struct ext3_reserve_window_node*,struct super_block*,unsigned long) ;

__attribute__((used)) static ext3_grpblk_t
ext3_try_to_allocate_with_rsv(struct super_block *sb, handle_t *handle,
   unsigned int group, struct buffer_head *bitmap_bh,
   ext3_grpblk_t grp_goal,
   struct ext3_reserve_window_node * my_rsv,
   unsigned long *count, int *errp)
{
 ext3_fsblk_t group_first_block, group_last_block;
 ext3_grpblk_t ret = 0;
 int fatal;
 unsigned long num = *count;

 *errp = 0;






 BUFFER_TRACE(bitmap_bh, "get undo access for new block");
 fatal = ext3_journal_get_undo_access(handle, bitmap_bh);
 if (fatal) {
  *errp = fatal;
  return -1;
 }







 if (my_rsv == ((void*)0) ) {
  ret = ext3_try_to_allocate(sb, handle, group, bitmap_bh,
      grp_goal, count, ((void*)0));
  goto out;
 }






 group_first_block = ext3_group_first_block_no(sb, group);
 group_last_block = group_first_block + (EXT3_BLOCKS_PER_GROUP(sb) - 1);
 while (1) {
  if (rsv_is_empty(&my_rsv->rsv_window) || (ret < 0) ||
   !goal_in_my_reservation(&my_rsv->rsv_window,
      grp_goal, group, sb)) {
   if (my_rsv->rsv_goal_size < *count)
    my_rsv->rsv_goal_size = *count;
   ret = alloc_new_reservation(my_rsv, grp_goal, sb,
       group, bitmap_bh);
   if (ret < 0)
    break;

   if (!goal_in_my_reservation(&my_rsv->rsv_window,
       grp_goal, group, sb))
    grp_goal = -1;
  } else if (grp_goal >= 0) {
   int curr = my_rsv->rsv_end -
     (grp_goal + group_first_block) + 1;

   if (curr < *count)
    try_to_extend_reservation(my_rsv, sb,
       *count - curr);
  }

  if ((my_rsv->rsv_start > group_last_block) ||
    (my_rsv->rsv_end < group_first_block)) {
   rsv_window_dump(&EXT3_SB(sb)->s_rsv_window_root, 1);
   BUG();
  }
  ret = ext3_try_to_allocate(sb, handle, group, bitmap_bh,
        grp_goal, &num, &my_rsv->rsv_window);
  if (ret >= 0) {
   my_rsv->rsv_alloc_hit += num;
   *count = num;
   break;
  }
  num = *count;
 }
out:
 if (ret >= 0) {
  BUFFER_TRACE(bitmap_bh, "journal_dirty_metadata for "
     "bitmap block");
  fatal = ext3_journal_dirty_metadata(handle, bitmap_bh);
  if (fatal) {
   *errp = fatal;
   return -1;
  }
  return ret;
 }

 BUFFER_TRACE(bitmap_bh, "journal_release_buffer");
 ext3_journal_release_buffer(handle, bitmap_bh);
 return ret;
}
