
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_ino; } ;
struct ext3_group_desc {int bg_free_inodes_count; int bg_free_blocks_count; } ;
struct TYPE_4__ {int i_block_group; } ;
struct TYPE_3__ {int s_groups_count; } ;


 TYPE_2__* EXT3_I (struct inode*) ;
 TYPE_1__* EXT3_SB (struct super_block*) ;
 struct ext3_group_desc* ext3_get_group_desc (struct super_block*,int,int *) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int find_group_other(struct super_block *sb, struct inode *parent)
{
 int parent_group = EXT3_I(parent)->i_block_group;
 int ngroups = EXT3_SB(sb)->s_groups_count;
 struct ext3_group_desc *desc;
 int group, i;




 group = parent_group;
 desc = ext3_get_group_desc (sb, group, ((void*)0));
 if (desc && le16_to_cpu(desc->bg_free_inodes_count) &&
   le16_to_cpu(desc->bg_free_blocks_count))
  return group;
 group = (group + parent->i_ino) % ngroups;





 for (i = 1; i < ngroups; i <<= 1) {
  group += i;
  if (group >= ngroups)
   group -= ngroups;
  desc = ext3_get_group_desc (sb, group, ((void*)0));
  if (desc && le16_to_cpu(desc->bg_free_inodes_count) &&
    le16_to_cpu(desc->bg_free_blocks_count))
   return group;
 }





 group = parent_group;
 for (i = 0; i < ngroups; i++) {
  if (++group >= ngroups)
   group = 0;
  desc = ext3_get_group_desc (sb, group, ((void*)0));
  if (desc && le16_to_cpu(desc->bg_free_inodes_count))
   return group;
 }

 return -1;
}
