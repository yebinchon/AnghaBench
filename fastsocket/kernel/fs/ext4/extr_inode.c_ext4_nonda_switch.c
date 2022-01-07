
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_sb_info {int s_dirtyblocks_counter; int s_freeblocks_counter; } ;
typedef int s64 ;


 int EXT4_FREEBLOCKS_WATERMARK ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int percpu_counter_read_positive (int *) ;
 int writeback_inodes_sb_if_idle (struct super_block*) ;

__attribute__((used)) static int ext4_nonda_switch(struct super_block *sb)
{
 s64 free_blocks, dirty_blocks;
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 free_blocks = percpu_counter_read_positive(&sbi->s_freeblocks_counter);
 dirty_blocks = percpu_counter_read_positive(&sbi->s_dirtyblocks_counter);
 if (2 * free_blocks < 3 * dirty_blocks ||
  free_blocks < (dirty_blocks + EXT4_FREEBLOCKS_WATERMARK)) {




  return 1;
 }




 if (free_blocks < 2 * dirty_blocks)
  writeback_inodes_sb_if_idle(sb);

 return 0;
}
