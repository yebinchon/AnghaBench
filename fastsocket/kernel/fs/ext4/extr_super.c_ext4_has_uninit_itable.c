
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_group_desc {int bg_flags; } ;
typedef scalar_t__ ext4_group_t ;
struct TYPE_2__ {scalar_t__ s_groups_count; } ;


 int EXT4_BG_INODE_ZEROED ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int cpu_to_le16 (int ) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,scalar_t__,int *) ;

__attribute__((used)) static ext4_group_t ext4_has_uninit_itable(struct super_block *sb)
{
 ext4_group_t group, ngroups = EXT4_SB(sb)->s_groups_count;
 struct ext4_group_desc *gdp = ((void*)0);

 for (group = 0; group < ngroups; group++) {
  gdp = ext4_get_group_desc(sb, group, ((void*)0));
  if (!gdp)
   continue;

  if (!(gdp->bg_flags & cpu_to_le16(EXT4_BG_INODE_ZEROED)))
   break;
 }

 return group;
}
