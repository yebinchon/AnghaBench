
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_free_extent {scalar_t__ fe_len; scalar_t__ fe_start; } ;
struct ext4_buddy {int dummy; } ;
struct ext4_allocation_context {scalar_t__ ac_status; int ac_flags; int ac_found; int ac_sb; struct ext4_free_extent ac_g_ex; struct ext4_free_extent ac_b_ex; } ;


 scalar_t__ AC_STATUS_CONTINUE ;
 int BUG_ON (int) ;
 scalar_t__ EXT4_BLOCKS_PER_GROUP (int ) ;
 int EXT4_MB_HINT_FIRST ;
 int ext4_mb_check_limits (struct ext4_allocation_context*,struct ext4_buddy*,int ) ;
 int ext4_mb_use_best_found (struct ext4_allocation_context*,struct ext4_buddy*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ext4_mb_measure_extent(struct ext4_allocation_context *ac,
     struct ext4_free_extent *ex,
     struct ext4_buddy *e4b)
{
 struct ext4_free_extent *bex = &ac->ac_b_ex;
 struct ext4_free_extent *gex = &ac->ac_g_ex;

 BUG_ON(ex->fe_len <= 0);
 BUG_ON(ex->fe_len > EXT4_BLOCKS_PER_GROUP(ac->ac_sb));
 BUG_ON(ex->fe_start >= EXT4_BLOCKS_PER_GROUP(ac->ac_sb));
 BUG_ON(ac->ac_status != AC_STATUS_CONTINUE);

 ac->ac_found++;




 if (unlikely(ac->ac_flags & EXT4_MB_HINT_FIRST)) {
  *bex = *ex;
  ext4_mb_use_best_found(ac, e4b);
  return;
 }




 if (ex->fe_len == gex->fe_len) {
  *bex = *ex;
  ext4_mb_use_best_found(ac, e4b);
  return;
 }




 if (bex->fe_len == 0) {
  *bex = *ex;
  return;
 }




 if (bex->fe_len < gex->fe_len) {


  if (ex->fe_len > bex->fe_len)
   *bex = *ex;
 } else if (ex->fe_len > gex->fe_len) {



  if (ex->fe_len < bex->fe_len)
   *bex = *ex;
 }

 ext4_mb_check_limits(ac, e4b, 0);
}
