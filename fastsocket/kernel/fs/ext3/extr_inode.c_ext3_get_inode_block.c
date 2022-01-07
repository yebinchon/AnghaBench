
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext3_iloc {unsigned long block_group; unsigned long offset; } ;
struct ext3_group_desc {int bg_inode_table; } ;
typedef scalar_t__ ext3_fsblk_t ;


 int EXT3_BLOCK_SIZE (struct super_block*) ;
 unsigned long EXT3_BLOCK_SIZE_BITS (struct super_block*) ;
 unsigned long EXT3_INODES_PER_GROUP (struct super_block*) ;
 unsigned long EXT3_INODE_SIZE (struct super_block*) ;
 struct ext3_group_desc* ext3_get_group_desc (struct super_block*,unsigned long,int *) ;
 int ext3_valid_inum (struct super_block*,unsigned long) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static ext3_fsblk_t ext3_get_inode_block(struct super_block *sb,
  unsigned long ino, struct ext3_iloc *iloc)
{
 unsigned long block_group;
 unsigned long offset;
 ext3_fsblk_t block;
 struct ext3_group_desc *gdp;

 if (!ext3_valid_inum(sb, ino)) {





  return 0;
 }

 block_group = (ino - 1) / EXT3_INODES_PER_GROUP(sb);
 gdp = ext3_get_group_desc(sb, block_group, ((void*)0));
 if (!gdp)
  return 0;



 offset = ((ino - 1) % EXT3_INODES_PER_GROUP(sb)) *
  EXT3_INODE_SIZE(sb);
 block = le32_to_cpu(gdp->bg_inode_table) +
  (offset >> EXT3_BLOCK_SIZE_BITS(sb));

 iloc->block_group = block_group;
 iloc->offset = offset & (EXT3_BLOCK_SIZE(sb) - 1);
 return block;
}
