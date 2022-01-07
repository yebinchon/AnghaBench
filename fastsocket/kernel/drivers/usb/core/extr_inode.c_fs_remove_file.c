
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; struct dentry* d_parent; } ;
struct TYPE_3__ {int i_mutex; int i_mode; } ;


 int I_MUTEX_PARENT ;
 scalar_t__ S_ISDIR (int ) ;
 int dput (struct dentry*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 scalar_t__ usbfs_positive (struct dentry*) ;
 int usbfs_rmdir (TYPE_1__*,struct dentry*) ;
 int usbfs_unlink (TYPE_1__*,struct dentry*) ;

__attribute__((used)) static void fs_remove_file (struct dentry *dentry)
{
 struct dentry *parent = dentry->d_parent;

 if (!parent || !parent->d_inode)
  return;

 mutex_lock_nested(&parent->d_inode->i_mutex, I_MUTEX_PARENT);
 if (usbfs_positive(dentry)) {
  if (dentry->d_inode) {
   if (S_ISDIR(dentry->d_inode->i_mode))
    usbfs_rmdir(parent->d_inode, dentry);
   else
    usbfs_unlink(parent->d_inode, dentry);
  dput(dentry);
  }
 }
 mutex_unlock(&parent->d_inode->i_mutex);
}
