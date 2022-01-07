
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; } ;
struct dentry {int d_flags; TYPE_2__* d_inode; } ;
struct TYPE_4__ {int i_mutex; } ;
struct TYPE_3__ {int (* unlink ) (struct inode*,struct dentry*) ;} ;


 int DCACHE_NFSFS_RENAMED ;
 int EBUSY ;
 int EPERM ;
 int d_delete (struct dentry*) ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 int fsnotify_link_count (TYPE_2__*) ;
 int may_delete (struct inode*,struct dentry*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int security_inode_unlink (struct inode*,struct dentry*) ;
 int stub1 (struct inode*,struct dentry*) ;
 int vfs_dq_init (struct inode*) ;

int vfs_unlink(struct inode *dir, struct dentry *dentry)
{
 int error = may_delete(dir, dentry, 0);

 if (error)
  return error;

 if (!dir->i_op->unlink)
  return -EPERM;

 vfs_dq_init(dir);

 mutex_lock(&dentry->d_inode->i_mutex);
 if (d_mountpoint(dentry))
  error = -EBUSY;
 else {
  error = security_inode_unlink(dir, dentry);
  if (!error)
   error = dir->i_op->unlink(dir, dentry);
 }
 mutex_unlock(&dentry->d_inode->i_mutex);


 if (!error && !(dentry->d_flags & DCACHE_NFSFS_RENAMED)) {
  fsnotify_link_count(dentry->d_inode);
  d_delete(dentry);
 }

 return error;
}
