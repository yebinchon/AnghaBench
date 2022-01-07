
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mutex; TYPE_1__* i_op; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int (* removexattr ) (struct dentry*,char const*) ;} ;


 int EOPNOTSUPP ;
 int MAY_WRITE ;
 int fsnotify_xattr (struct dentry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int security_inode_removexattr (struct dentry*,char const*) ;
 int stub1 (struct dentry*,char const*) ;
 int xattr_permission (struct inode*,char const*,int ) ;

int
vfs_removexattr(struct dentry *dentry, const char *name)
{
 struct inode *inode = dentry->d_inode;
 int error;

 if (!inode->i_op->removexattr)
  return -EOPNOTSUPP;

 error = xattr_permission(inode, name, MAY_WRITE);
 if (error)
  return error;

 error = security_inode_removexattr(dentry, name);
 if (error)
  return error;

 mutex_lock(&inode->i_mutex);
 error = inode->i_op->removexattr(dentry, name);
 mutex_unlock(&inode->i_mutex);

 if (!error)
  fsnotify_xattr(dentry);
 return error;
}
