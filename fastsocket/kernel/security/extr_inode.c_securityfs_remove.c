
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; struct dentry* d_parent; } ;
struct TYPE_3__ {int i_mutex; int i_mode; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 scalar_t__ S_ISDIR (int ) ;
 int dput (struct dentry*) ;
 int mount ;
 int mount_count ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ positive (struct dentry*) ;
 int simple_release_fs (int *,int *) ;
 int simple_rmdir (TYPE_1__*,struct dentry*) ;
 int simple_unlink (TYPE_1__*,struct dentry*) ;

void securityfs_remove(struct dentry *dentry)
{
 struct dentry *parent;

 if (!dentry || IS_ERR(dentry))
  return;

 parent = dentry->d_parent;
 if (!parent || !parent->d_inode)
  return;

 mutex_lock(&parent->d_inode->i_mutex);
 if (positive(dentry)) {
  if (dentry->d_inode) {
   if (S_ISDIR(dentry->d_inode->i_mode))
    simple_rmdir(parent->d_inode, dentry);
   else
    simple_unlink(parent->d_inode, dentry);
   dput(dentry);
  }
 }
 mutex_unlock(&parent->d_inode->i_mutex);
 simple_release_fs(&mount, &mount_count);
}
