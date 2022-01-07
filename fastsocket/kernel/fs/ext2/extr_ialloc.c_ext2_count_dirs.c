
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext2_group_desc {int bg_used_dirs_count; } ;
struct TYPE_2__ {int s_groups_count; } ;


 TYPE_1__* EXT2_SB (struct super_block*) ;
 struct ext2_group_desc* ext2_get_group_desc (struct super_block*,int,int *) ;
 scalar_t__ le16_to_cpu (int ) ;

unsigned long ext2_count_dirs (struct super_block * sb)
{
 unsigned long count = 0;
 int i;

 for (i = 0; i < EXT2_SB(sb)->s_groups_count; i++) {
  struct ext2_group_desc *gdp = ext2_get_group_desc (sb, i, ((void*)0));
  if (!gdp)
   continue;
  count += le16_to_cpu(gdp->bg_used_dirs_count);
 }
 return count;
}
