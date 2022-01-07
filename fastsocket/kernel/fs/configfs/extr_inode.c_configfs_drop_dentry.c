
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; scalar_t__ d_inode; } ;
struct configfs_dirent {struct dentry* s_dentry; } ;


 int __d_drop (struct dentry*) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int dcache_lock ;
 int dget_locked (struct dentry*) ;
 int simple_unlink (scalar_t__,struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void configfs_drop_dentry(struct configfs_dirent * sd, struct dentry * parent)
{
 struct dentry * dentry = sd->s_dentry;

 if (dentry) {
  spin_lock(&dcache_lock);
  spin_lock(&dentry->d_lock);
  if (!(d_unhashed(dentry) && dentry->d_inode)) {
   dget_locked(dentry);
   __d_drop(dentry);
   spin_unlock(&dentry->d_lock);
   spin_unlock(&dcache_lock);
   simple_unlink(parent->d_inode, dentry);
  } else {
   spin_unlock(&dentry->d_lock);
   spin_unlock(&dcache_lock);
  }
 }
}
