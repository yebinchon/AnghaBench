
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {int s_resv_blocks; int s_es; } ;
typedef scalar_t__ ext4_fsblk_t ;


 int EINVAL ;
 int atomic64_set (int *,scalar_t__) ;
 scalar_t__ ext4_blocks_count (int ) ;

__attribute__((used)) static int ext4_reserve_blocks(struct ext4_sb_info *sbi, ext4_fsblk_t count)
{
 ext4_fsblk_t blocks = ext4_blocks_count(sbi->s_es);

 if (count >= blocks)
  return -EINVAL;

 atomic64_set(&sbi->s_resv_blocks, count);
 return 0;
}
