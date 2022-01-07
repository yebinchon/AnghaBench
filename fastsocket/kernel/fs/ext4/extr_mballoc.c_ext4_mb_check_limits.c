
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {scalar_t__ s_mb_max_to_scan; scalar_t__ s_mb_min_to_scan; } ;
struct ext4_free_extent {int fe_len; scalar_t__ fe_group; int fe_start; } ;
struct ext4_buddy {scalar_t__ bd_group; } ;
struct ext4_allocation_context {scalar_t__ ac_status; scalar_t__ ac_found; int ac_flags; struct ext4_free_extent ac_g_ex; struct ext4_free_extent ac_b_ex; int ac_sb; } ;


 scalar_t__ AC_STATUS_BREAK ;
 scalar_t__ AC_STATUS_FOUND ;
 int EXT4_MB_HINT_FIRST ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int ext4_mb_use_best_found (struct ext4_allocation_context*,struct ext4_buddy*) ;
 int mb_find_extent (struct ext4_buddy*,int ,int ,int,struct ext4_free_extent*) ;

__attribute__((used)) static void ext4_mb_check_limits(struct ext4_allocation_context *ac,
     struct ext4_buddy *e4b,
     int finish_group)
{
 struct ext4_sb_info *sbi = EXT4_SB(ac->ac_sb);
 struct ext4_free_extent *bex = &ac->ac_b_ex;
 struct ext4_free_extent *gex = &ac->ac_g_ex;
 struct ext4_free_extent ex;
 int max;

 if (ac->ac_status == AC_STATUS_FOUND)
  return;



 if (ac->ac_found > sbi->s_mb_max_to_scan &&
   !(ac->ac_flags & EXT4_MB_HINT_FIRST)) {
  ac->ac_status = AC_STATUS_BREAK;
  return;
 }




 if (bex->fe_len < gex->fe_len)
  return;

 if ((finish_group || ac->ac_found > sbi->s_mb_min_to_scan)
   && bex->fe_group == e4b->bd_group) {



  max = mb_find_extent(e4b, 0, bex->fe_start, gex->fe_len, &ex);
  if (max >= gex->fe_len) {
   ext4_mb_use_best_found(ac, e4b);
   return;
  }
 }
}
