
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext2_sb_info {scalar_t__ s_resuid; scalar_t__ s_resgid; TYPE_1__* s_es; int s_freeblocks_counter; } ;
typedef scalar_t__ ext2_fsblk_t ;
struct TYPE_2__ {int s_r_blocks_count; } ;


 int CAP_SYS_RESOURCE ;
 int capable (int ) ;
 scalar_t__ current_fsuid () ;
 int in_group_p (scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ percpu_counter_read_positive (int *) ;

__attribute__((used)) static int ext2_has_free_blocks(struct ext2_sb_info *sbi)
{
 ext2_fsblk_t free_blocks, root_blocks;

 free_blocks = percpu_counter_read_positive(&sbi->s_freeblocks_counter);
 root_blocks = le32_to_cpu(sbi->s_es->s_r_blocks_count);
 if (free_blocks < root_blocks + 1 && !capable(CAP_SYS_RESOURCE) &&
  sbi->s_resuid != current_fsuid() &&
  (sbi->s_resgid == 0 || !in_group_p (sbi->s_resgid))) {
  return 0;
 }
 return 1;
}
