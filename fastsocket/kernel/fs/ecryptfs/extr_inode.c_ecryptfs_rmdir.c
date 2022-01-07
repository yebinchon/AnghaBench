
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_nlink; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_nlink; } ;


 int d_delete (struct dentry*) ;
 int d_drop (struct dentry*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* ecryptfs_dentry_to_lower (struct dentry*) ;
 int fsstack_copy_attr_times (struct inode*,TYPE_1__*) ;
 struct dentry* lock_parent (struct dentry*) ;
 int unlock_dir (struct dentry*) ;
 int vfs_rmdir (TYPE_1__*,struct dentry*) ;

__attribute__((used)) static int ecryptfs_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct dentry *lower_dentry;
 struct dentry *lower_dir_dentry;
 int rc;

 lower_dentry = ecryptfs_dentry_to_lower(dentry);
 dget(dentry);
 lower_dir_dentry = lock_parent(lower_dentry);
 dget(lower_dentry);
 rc = vfs_rmdir(lower_dir_dentry->d_inode, lower_dentry);
 dput(lower_dentry);
 if (!rc)
  d_delete(lower_dentry);
 fsstack_copy_attr_times(dir, lower_dir_dentry->d_inode);
 dir->i_nlink = lower_dir_dentry->d_inode->i_nlink;
 unlock_dir(lower_dir_dentry);
 if (!rc)
  d_drop(dentry);
 dput(dentry);
 return rc;
}
