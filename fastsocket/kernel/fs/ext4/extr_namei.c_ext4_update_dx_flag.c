
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;


 int EXT4_FEATURE_COMPAT_DIR_INDEX ;
 int EXT4_HAS_COMPAT_FEATURE (int ,int ) ;
 int EXT4_INODE_INDEX ;
 int ext4_clear_inode_flag (struct inode*,int ) ;

__attribute__((used)) static void ext4_update_dx_flag(struct inode *inode)
{
 if (!EXT4_HAS_COMPAT_FEATURE(inode->i_sb,
         EXT4_FEATURE_COMPAT_DIR_INDEX))
  ext4_clear_inode_flag(inode, EXT4_INODE_INDEX);
}
