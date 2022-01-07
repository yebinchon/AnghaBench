
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int EINVAL ;
 int add_nondir (struct dentry*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 struct inode* minix_new_inode (struct inode*,int*) ;
 int minix_set_inode (struct inode*,int ) ;
 int old_valid_dev (int ) ;

__attribute__((used)) static int minix_mknod(struct inode * dir, struct dentry *dentry, int mode, dev_t rdev)
{
 int error;
 struct inode *inode;

 if (!old_valid_dev(rdev))
  return -EINVAL;

 inode = minix_new_inode(dir, &error);

 if (inode) {
  inode->i_mode = mode;
  minix_set_inode(inode, rdev);
  mark_inode_dirty(inode);
  error = add_nondir(dentry, inode);
 }
 return error;
}
