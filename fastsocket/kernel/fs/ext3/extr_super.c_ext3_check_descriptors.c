
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext3_sb_info {int s_groups_count; int s_itb_per_group; TYPE_1__* s_es; } ;
struct ext3_group_desc {int bg_inode_table; int bg_inode_bitmap; int bg_block_bitmap; } ;
typedef int ext3_fsblk_t ;
struct TYPE_2__ {void* s_free_inodes_count; void* s_free_blocks_count; int s_blocks_count; } ;


 int EXT3_BLOCKS_PER_GROUP (struct super_block*) ;
 struct ext3_sb_info* EXT3_SB (struct super_block*) ;
 void* cpu_to_le32 (int ) ;
 int ext3_count_free_blocks (struct super_block*) ;
 int ext3_count_free_inodes (struct super_block*) ;
 int ext3_debug (char*) ;
 int ext3_error (struct super_block*,char*,char*,int,unsigned long) ;
 struct ext3_group_desc* ext3_get_group_desc (struct super_block*,int,int *) ;
 int ext3_group_first_block_no (struct super_block*,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ext3_check_descriptors(struct super_block *sb)
{
 struct ext3_sb_info *sbi = EXT3_SB(sb);
 int i;

 ext3_debug ("Checking group descriptors");

 for (i = 0; i < sbi->s_groups_count; i++) {
  struct ext3_group_desc *gdp = ext3_get_group_desc(sb, i, ((void*)0));
  ext3_fsblk_t first_block = ext3_group_first_block_no(sb, i);
  ext3_fsblk_t last_block;

  if (i == sbi->s_groups_count - 1)
   last_block = le32_to_cpu(sbi->s_es->s_blocks_count) - 1;
  else
   last_block = first_block +
    (EXT3_BLOCKS_PER_GROUP(sb) - 1);

  if (le32_to_cpu(gdp->bg_block_bitmap) < first_block ||
      le32_to_cpu(gdp->bg_block_bitmap) > last_block)
  {
   ext3_error (sb, "ext3_check_descriptors",
        "Block bitmap for group %d"
        " not in group (block %lu)!",
        i, (unsigned long)
     le32_to_cpu(gdp->bg_block_bitmap));
   return 0;
  }
  if (le32_to_cpu(gdp->bg_inode_bitmap) < first_block ||
      le32_to_cpu(gdp->bg_inode_bitmap) > last_block)
  {
   ext3_error (sb, "ext3_check_descriptors",
        "Inode bitmap for group %d"
        " not in group (block %lu)!",
        i, (unsigned long)
     le32_to_cpu(gdp->bg_inode_bitmap));
   return 0;
  }
  if (le32_to_cpu(gdp->bg_inode_table) < first_block ||
      le32_to_cpu(gdp->bg_inode_table) + sbi->s_itb_per_group - 1 >
      last_block)
  {
   ext3_error (sb, "ext3_check_descriptors",
        "Inode table for group %d"
        " not in group (block %lu)!",
        i, (unsigned long)
     le32_to_cpu(gdp->bg_inode_table));
   return 0;
  }
 }

 sbi->s_es->s_free_blocks_count=cpu_to_le32(ext3_count_free_blocks(sb));
 sbi->s_es->s_free_inodes_count=cpu_to_le32(ext3_count_free_inodes(sb));
 return 1;
}
