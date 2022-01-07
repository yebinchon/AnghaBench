
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {TYPE_2__* d_inode; } ;
typedef int ssize_t ;
struct TYPE_4__ {int i_mutex; TYPE_1__* i_op; } ;
struct TYPE_3__ {int (* getxattr ) (struct dentry*,char const*,void*,size_t) ;} ;


 int EOPNOTSUPP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct dentry*,char const*,void*,size_t) ;

ssize_t
ecryptfs_getxattr_lower(struct dentry *lower_dentry, const char *name,
   void *value, size_t size)
{
 int rc = 0;

 if (!lower_dentry->d_inode->i_op->getxattr) {
  rc = -EOPNOTSUPP;
  goto out;
 }
 mutex_lock(&lower_dentry->d_inode->i_mutex);
 rc = lower_dentry->d_inode->i_op->getxattr(lower_dentry, name, value,
         size);
 mutex_unlock(&lower_dentry->d_inode->i_mutex);
out:
 return rc;
}
