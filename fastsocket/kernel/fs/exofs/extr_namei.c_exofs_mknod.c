
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int EINVAL ;
 int IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int exofs_add_nondir (struct dentry*,struct inode*) ;
 struct inode* exofs_new_inode (struct inode*,int) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int mark_inode_dirty (struct inode*) ;
 int new_valid_dev (int ) ;

__attribute__((used)) static int exofs_mknod(struct inode *dir, struct dentry *dentry, int mode,
         dev_t rdev)
{
 struct inode *inode;
 int err;

 if (!new_valid_dev(rdev))
  return -EINVAL;

 inode = exofs_new_inode(dir, mode);
 err = PTR_ERR(inode);
 if (!IS_ERR(inode)) {
  init_special_inode(inode, inode->i_mode, rdev);
  mark_inode_dirty(inode);
  err = exofs_add_nondir(dentry, inode);
 }
 return err;
}
