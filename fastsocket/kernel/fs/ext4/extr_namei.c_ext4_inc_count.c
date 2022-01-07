
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; int i_sb; } ;
typedef int handle_t ;


 int EXT4_FEATURE_RO_COMPAT_DIR_NLINK ;
 int EXT4_LINK_MAX ;
 int EXT4_SET_RO_COMPAT_FEATURE (int ,int ) ;
 int inc_nlink (struct inode*) ;
 scalar_t__ is_dx (struct inode*) ;

__attribute__((used)) static void ext4_inc_count(handle_t *handle, struct inode *inode)
{
 inc_nlink(inode);
 if (is_dx(inode) && inode->i_nlink > 1) {

  if (inode->i_nlink >= EXT4_LINK_MAX || inode->i_nlink == 2) {
   inode->i_nlink = 1;
   EXT4_SET_RO_COMPAT_FEATURE(inode->i_sb,
           EXT4_FEATURE_RO_COMPAT_DIR_NLINK);
  }
 }
}
