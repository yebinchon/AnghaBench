
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext3_group_desc {int bg_inode_bitmap; } ;
struct buffer_head {int dummy; } ;


 int ext3_error (struct super_block*,char*,char*,unsigned long,int ) ;
 struct ext3_group_desc* ext3_get_group_desc (struct super_block*,unsigned long,int *) ;
 int le32_to_cpu (int ) ;
 struct buffer_head* sb_bread (struct super_block*,int ) ;

__attribute__((used)) static struct buffer_head *
read_inode_bitmap(struct super_block * sb, unsigned long block_group)
{
 struct ext3_group_desc *desc;
 struct buffer_head *bh = ((void*)0);

 desc = ext3_get_group_desc(sb, block_group, ((void*)0));
 if (!desc)
  goto error_out;

 bh = sb_bread(sb, le32_to_cpu(desc->bg_inode_bitmap));
 if (!bh)
  ext3_error(sb, "read_inode_bitmap",
       "Cannot read inode bitmap - "
       "block_group = %lu, inode_bitmap = %u",
       block_group, le32_to_cpu(desc->bg_inode_bitmap));
error_out:
 return bh;
}
