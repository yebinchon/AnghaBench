
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext4_group_info {unsigned int bb_free; unsigned int bb_fragments; int bb_largest_free_order; } ;
struct TYPE_2__ {unsigned int fe_len; } ;
struct ext4_allocation_context {int ac_flags; TYPE_1__ ac_g_ex; int ac_2order; int ac_sb; } ;
typedef int ext4_group_t ;


 int BUG () ;
 int BUG_ON (int) ;
 int EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME ;
 int EXT4_MB_GRP_NEED_INIT (struct ext4_group_info*) ;
 int EXT4_MB_HINT_DATA ;
 int EXT4_SB (int ) ;
 int ext4_flex_bg_size (int ) ;
 struct ext4_group_info* ext4_get_group_info (int ,int) ;
 int ext4_mb_init_group (int ,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ext4_mb_good_group(struct ext4_allocation_context *ac,
    ext4_group_t group, int cr)
{
 unsigned free, fragments;
 int flex_size = ext4_flex_bg_size(EXT4_SB(ac->ac_sb));
 struct ext4_group_info *grp = ext4_get_group_info(ac->ac_sb, group);

 BUG_ON(cr < 0 || cr >= 4);


 if (unlikely(EXT4_MB_GRP_NEED_INIT(grp))) {
  int ret = ext4_mb_init_group(ac->ac_sb, group);
  if (ret)
   return 0;
 }

 free = grp->bb_free;
 fragments = grp->bb_fragments;
 if (free == 0)
  return 0;
 if (fragments == 0)
  return 0;

 switch (cr) {
 case 0:
  BUG_ON(ac->ac_2order == 0);

  if (grp->bb_largest_free_order < ac->ac_2order)
   return 0;


  if ((ac->ac_flags & EXT4_MB_HINT_DATA) &&
      (flex_size >= EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME) &&
      ((group % flex_size) == 0))
   return 0;

  return 1;
 case 1:
  if ((free / fragments) >= ac->ac_g_ex.fe_len)
   return 1;
  break;
 case 2:
  if (free >= ac->ac_g_ex.fe_len)
   return 1;
  break;
 case 3:
  return 1;
 default:
  BUG();
 }

 return 0;
}
