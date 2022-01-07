
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mutex; } ;
struct dentry {struct inode* d_inode; } ;


 int MAY_WRITE ;
 int __vfs_setxattr_noperm (struct dentry*,char const*,void const*,size_t,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int security_inode_setxattr (struct dentry*,char const*,void const*,size_t,int) ;
 int xattr_permission (struct inode*,char const*,int ) ;

int
vfs_setxattr(struct dentry *dentry, const char *name, const void *value,
  size_t size, int flags)
{
 struct inode *inode = dentry->d_inode;
 int error;

 error = xattr_permission(inode, name, MAY_WRITE);
 if (error)
  return error;

 mutex_lock(&inode->i_mutex);
 error = security_inode_setxattr(dentry, name, value, size, flags);
 if (error)
  goto out;

 error = __vfs_setxattr_noperm(dentry, name, value, size, flags);

out:
 mutex_unlock(&inode->i_mutex);
 return error;
}
