
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; struct dentry* d_parent; } ;
struct TYPE_2__ {int i_mutex; } ;


 int __debugfs_remove (struct dentry*,struct dentry*) ;
 int debugfs_mount ;
 int debugfs_mount_count ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_release_fs (int *,int *) ;

void debugfs_remove(struct dentry *dentry)
{
 struct dentry *parent;

 if (!dentry)
  return;

 parent = dentry->d_parent;
 if (!parent || !parent->d_inode)
  return;

 mutex_lock(&parent->d_inode->i_mutex);
 __debugfs_remove(dentry, parent);
 mutex_unlock(&parent->d_inode->i_mutex);
 simple_release_fs(&debugfs_mount, &debugfs_mount_count);
}
