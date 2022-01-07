
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct ext2_super_block {int s_free_blocks_count; } ;
struct ext2_group_desc {int bg_free_blocks_count; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int s_groups_count; struct ext2_super_block* s_es; } ;


 TYPE_1__* EXT2_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 unsigned long ext2_count_free (struct buffer_head*,int ) ;
 struct ext2_group_desc* ext2_get_group_desc (struct super_block*,int,int *) ;
 unsigned long le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int printk (char*,long,unsigned long,unsigned long) ;
 struct buffer_head* read_block_bitmap (struct super_block*,int) ;

unsigned long ext2_count_free_blocks (struct super_block * sb)
{
 struct ext2_group_desc * desc;
 unsigned long desc_count = 0;
 int i;
        for (i = 0; i < EXT2_SB(sb)->s_groups_count; i++) {
                desc = ext2_get_group_desc (sb, i, ((void*)0));
                if (!desc)
                        continue;
                desc_count += le16_to_cpu(desc->bg_free_blocks_count);
 }
 return desc_count;

}
