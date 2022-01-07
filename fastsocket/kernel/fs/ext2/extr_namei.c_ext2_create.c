
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int * i_fop; TYPE_1__* i_mapping; int i_sb; int * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;


 int IS_ERR (struct inode*) ;
 int NOBH ;
 int PTR_ERR (struct inode*) ;
 int ext2_add_nondir (struct dentry*,struct inode*) ;
 int ext2_aops ;
 int ext2_aops_xip ;
 int ext2_file_inode_operations ;
 int ext2_file_operations ;
 struct inode* ext2_new_inode (struct inode*,int) ;
 int ext2_nobh_aops ;
 scalar_t__ ext2_use_xip (int ) ;
 int ext2_xip_file_operations ;
 int mark_inode_dirty (struct inode*) ;
 scalar_t__ test_opt (int ,int ) ;

__attribute__((used)) static int ext2_create (struct inode * dir, struct dentry * dentry, int mode, struct nameidata *nd)
{
 struct inode * inode = ext2_new_inode (dir, mode);
 int err = PTR_ERR(inode);
 if (!IS_ERR(inode)) {
  inode->i_op = &ext2_file_inode_operations;
  if (ext2_use_xip(inode->i_sb)) {
   inode->i_mapping->a_ops = &ext2_aops_xip;
   inode->i_fop = &ext2_xip_file_operations;
  } else if (test_opt(inode->i_sb, NOBH)) {
   inode->i_mapping->a_ops = &ext2_nobh_aops;
   inode->i_fop = &ext2_file_operations;
  } else {
   inode->i_mapping->a_ops = &ext2_aops;
   inode->i_fop = &ext2_file_operations;
  }
  mark_inode_dirty(inode);
  err = ext2_add_nondir(dentry, inode);
 }
 return err;
}
