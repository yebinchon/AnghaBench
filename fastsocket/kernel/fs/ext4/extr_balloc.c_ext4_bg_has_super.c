
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int ext4_group_t ;


 int EXT4_FEATURE_RO_COMPAT_SPARSE_SUPER ;
 scalar_t__ EXT4_HAS_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 int ext4_group_sparse (int ) ;

int ext4_bg_has_super(struct super_block *sb, ext4_group_t group)
{
 if (EXT4_HAS_RO_COMPAT_FEATURE(sb,
    EXT4_FEATURE_RO_COMPAT_SPARSE_SUPER) &&
   !ext4_group_sparse(group))
  return 0;
 return 1;
}
