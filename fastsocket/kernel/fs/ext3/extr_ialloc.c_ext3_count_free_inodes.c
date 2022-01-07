
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext3_super_block {int s_free_inodes_count; } ;
struct ext3_group_desc {int bg_free_inodes_count; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int s_groups_count; struct ext3_super_block* s_es; } ;


 int EXT3_INODES_PER_GROUP (struct super_block*) ;
 TYPE_1__* EXT3_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int cond_resched () ;
 unsigned long ext3_count_free (struct buffer_head*,int) ;
 struct ext3_group_desc* ext3_get_group_desc (struct super_block*,int,int *) ;
 unsigned long le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int printk (char*,int,unsigned long,unsigned long) ;
 struct buffer_head* read_inode_bitmap (struct super_block*,int) ;

unsigned long ext3_count_free_inodes (struct super_block * sb)
{
 unsigned long desc_count;
 struct ext3_group_desc *gdp;
 int i;
 desc_count = 0;
 for (i = 0; i < EXT3_SB(sb)->s_groups_count; i++) {
  gdp = ext3_get_group_desc (sb, i, ((void*)0));
  if (!gdp)
   continue;
  desc_count += le16_to_cpu(gdp->bg_free_inodes_count);
  cond_resched();
 }
 return desc_count;

}
