
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {TYPE_2__* d_inode; } ;
struct TYPE_4__ {int i_mutex; TYPE_1__* i_op; } ;
struct TYPE_3__ {int (* setxattr ) (struct dentry*,char const*,void const*,size_t,int) ;} ;


 int EOPNOTSUPP ;
 struct dentry* ecryptfs_dentry_to_lower (struct dentry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct dentry*,char const*,void const*,size_t,int) ;

int
ecryptfs_setxattr(struct dentry *dentry, const char *name, const void *value,
    size_t size, int flags)
{
 int rc = 0;
 struct dentry *lower_dentry;

 lower_dentry = ecryptfs_dentry_to_lower(dentry);
 if (!lower_dentry->d_inode->i_op->setxattr) {
  rc = -EOPNOTSUPP;
  goto out;
 }
 mutex_lock(&lower_dentry->d_inode->i_mutex);
 rc = lower_dentry->d_inode->i_op->setxattr(lower_dentry, name, value,
         size, flags);
 mutex_unlock(&lower_dentry->d_inode->i_mutex);
out:
 return rc;
}
