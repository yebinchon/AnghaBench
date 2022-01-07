
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_dirt; } ;
struct ext2_sb_info {int s_freeblocks_counter; } ;


 struct ext2_sb_info* EXT2_SB (struct super_block*) ;
 int percpu_counter_add (int *,int) ;

__attribute__((used)) static void release_blocks(struct super_block *sb, int count)
{
 if (count) {
  struct ext2_sb_info *sbi = EXT2_SB(sb);

  percpu_counter_add(&sbi->s_freeblocks_counter, count);
  sb->s_dirt = 1;
 }
}
