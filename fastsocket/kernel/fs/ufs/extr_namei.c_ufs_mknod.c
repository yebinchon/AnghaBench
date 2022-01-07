
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int EINVAL ;
 int IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int UFS_I (struct inode*) ;
 int init_special_inode (struct inode*,int,int ) ;
 int lock_kernel () ;
 int mark_inode_dirty (struct inode*) ;
 int old_valid_dev (int ) ;
 int ufs_add_nondir (struct dentry*,struct inode*) ;
 struct inode* ufs_new_inode (struct inode*,int) ;
 int ufs_set_inode_dev (int ,int ,int ) ;
 int unlock_kernel () ;

__attribute__((used)) static int ufs_mknod (struct inode * dir, struct dentry *dentry, int mode, dev_t rdev)
{
 struct inode *inode;
 int err;

 if (!old_valid_dev(rdev))
  return -EINVAL;
 inode = ufs_new_inode(dir, mode);
 err = PTR_ERR(inode);
 if (!IS_ERR(inode)) {
  init_special_inode(inode, mode, rdev);
  ufs_set_inode_dev(inode->i_sb, UFS_I(inode), rdev);
  mark_inode_dirty(inode);
  lock_kernel();
  err = ufs_add_nondir(dentry, inode);
  unlock_kernel();
 }
 return err;
}
