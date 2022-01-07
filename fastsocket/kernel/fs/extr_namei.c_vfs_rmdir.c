
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_op; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int (* rmdir ) (struct inode*,struct dentry*) ;} ;
struct TYPE_3__ {int i_mutex; int i_flags; } ;


 int EBUSY ;
 int EPERM ;
 int S_DEAD ;
 int d_delete (struct dentry*) ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 int dentry_unhash (struct dentry*) ;
 int dput (struct dentry*) ;
 int may_delete (struct inode*,struct dentry*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int security_inode_rmdir (struct inode*,struct dentry*) ;
 int stub1 (struct inode*,struct dentry*) ;
 int vfs_dq_init (struct inode*) ;

int vfs_rmdir(struct inode *dir, struct dentry *dentry)
{
 int error = may_delete(dir, dentry, 1);

 if (error)
  return error;

 if (!dir->i_op->rmdir)
  return -EPERM;

 vfs_dq_init(dir);

 mutex_lock(&dentry->d_inode->i_mutex);
 dentry_unhash(dentry);
 if (d_mountpoint(dentry))
  error = -EBUSY;
 else {
  error = security_inode_rmdir(dir, dentry);
  if (!error) {
   error = dir->i_op->rmdir(dir, dentry);
   if (!error)
    dentry->d_inode->i_flags |= S_DEAD;
  }
 }
 mutex_unlock(&dentry->d_inode->i_mutex);
 if (!error) {
  d_delete(dentry);
 }
 dput(dentry);

 return error;
}
