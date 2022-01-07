
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int EXT2_FEATURE_RO_COMPAT_SPARSE_SUPER ;
 scalar_t__ EXT2_HAS_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 int ext2_group_sparse (int) ;

int ext2_bg_has_super(struct super_block *sb, int group)
{
 if (EXT2_HAS_RO_COMPAT_FEATURE(sb,EXT2_FEATURE_RO_COMPAT_SPARSE_SUPER)&&
     !ext2_group_sparse(group))
  return 0;
 return 1;
}
