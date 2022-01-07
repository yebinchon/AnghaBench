
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct file_operations {int dummy; } ;
struct dentry {scalar_t__ d_inode; } ;
typedef int dev_t ;


 int EEXIST ;
 int EPERM ;
 int d_instantiate (struct dentry*,struct inode*) ;
 struct inode* debugfs_get_inode (int ,int,int ,void*,struct file_operations const*) ;
 int dget (struct dentry*) ;

__attribute__((used)) static int debugfs_mknod(struct inode *dir, struct dentry *dentry,
    int mode, dev_t dev, void *data,
    const struct file_operations *fops)
{
 struct inode *inode;
 int error = -EPERM;

 if (dentry->d_inode)
  return -EEXIST;

 inode = debugfs_get_inode(dir->i_sb, mode, dev, data, fops);
 if (inode) {
  d_instantiate(dentry, inode);
  dget(dentry);
  error = 0;
 }
 return error;
}
