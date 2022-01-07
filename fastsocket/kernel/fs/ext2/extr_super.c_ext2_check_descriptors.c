
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext2_sb_info {int s_groups_count; int s_itb_per_group; TYPE_1__* s_es; } ;
struct ext2_group_desc {int bg_inode_table; int bg_inode_bitmap; int bg_block_bitmap; } ;
typedef int ext2_fsblk_t ;
struct TYPE_2__ {int s_blocks_count; } ;


 int EXT2_BLOCKS_PER_GROUP (struct super_block*) ;
 struct ext2_sb_info* EXT2_SB (struct super_block*) ;
 int ext2_debug (char*) ;
 int ext2_error (struct super_block*,char*,char*,int,unsigned long) ;
 struct ext2_group_desc* ext2_get_group_desc (struct super_block*,int,int *) ;
 int ext2_group_first_block_no (struct super_block*,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ext2_check_descriptors(struct super_block *sb)
{
 int i;
 struct ext2_sb_info *sbi = EXT2_SB(sb);

 ext2_debug ("Checking group descriptors");

 for (i = 0; i < sbi->s_groups_count; i++) {
  struct ext2_group_desc *gdp = ext2_get_group_desc(sb, i, ((void*)0));
  ext2_fsblk_t first_block = ext2_group_first_block_no(sb, i);
  ext2_fsblk_t last_block;

  if (i == sbi->s_groups_count - 1)
   last_block = le32_to_cpu(sbi->s_es->s_blocks_count) - 1;
  else
   last_block = first_block +
    (EXT2_BLOCKS_PER_GROUP(sb) - 1);

  if (le32_to_cpu(gdp->bg_block_bitmap) < first_block ||
      le32_to_cpu(gdp->bg_block_bitmap) > last_block)
  {
   ext2_error (sb, "ext2_check_descriptors",
        "Block bitmap for group %d"
        " not in group (block %lu)!",
        i, (unsigned long) le32_to_cpu(gdp->bg_block_bitmap));
   return 0;
  }
  if (le32_to_cpu(gdp->bg_inode_bitmap) < first_block ||
      le32_to_cpu(gdp->bg_inode_bitmap) > last_block)
  {
   ext2_error (sb, "ext2_check_descriptors",
        "Inode bitmap for group %d"
        " not in group (block %lu)!",
        i, (unsigned long) le32_to_cpu(gdp->bg_inode_bitmap));
   return 0;
  }
  if (le32_to_cpu(gdp->bg_inode_table) < first_block ||
      le32_to_cpu(gdp->bg_inode_table) + sbi->s_itb_per_group - 1 >
      last_block)
  {
   ext2_error (sb, "ext2_check_descriptors",
        "Inode table for group %d"
        " not in group (block %lu)!",
        i, (unsigned long) le32_to_cpu(gdp->bg_inode_table));
   return 0;
  }
 }
 return 1;
}
