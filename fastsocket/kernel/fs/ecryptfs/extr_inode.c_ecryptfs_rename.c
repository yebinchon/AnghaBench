
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {struct dentry* d_parent; int d_inode; } ;


 int dget (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* ecryptfs_dentry_to_lower (struct dentry*) ;
 int fsstack_copy_attr_all (struct inode*,int ,int *) ;
 int lock_rename (struct dentry*,struct dentry*) ;
 int unlock_rename (struct dentry*,struct dentry*) ;
 int vfs_rename (int ,struct dentry*,int ,struct dentry*) ;

__attribute__((used)) static int
ecryptfs_rename(struct inode *old_dir, struct dentry *old_dentry,
  struct inode *new_dir, struct dentry *new_dentry)
{
 int rc;
 struct dentry *lower_old_dentry;
 struct dentry *lower_new_dentry;
 struct dentry *lower_old_dir_dentry;
 struct dentry *lower_new_dir_dentry;

 lower_old_dentry = ecryptfs_dentry_to_lower(old_dentry);
 lower_new_dentry = ecryptfs_dentry_to_lower(new_dentry);
 dget(lower_old_dentry);
 dget(lower_new_dentry);
 lower_old_dir_dentry = dget_parent(lower_old_dentry);
 lower_new_dir_dentry = dget_parent(lower_new_dentry);
 lock_rename(lower_old_dir_dentry, lower_new_dir_dentry);
 rc = vfs_rename(lower_old_dir_dentry->d_inode, lower_old_dentry,
   lower_new_dir_dentry->d_inode, lower_new_dentry);
 if (rc)
  goto out_lock;
 fsstack_copy_attr_all(new_dir, lower_new_dir_dentry->d_inode, ((void*)0));
 if (new_dir != old_dir)
  fsstack_copy_attr_all(old_dir, lower_old_dir_dentry->d_inode, ((void*)0));
out_lock:
 unlock_rename(lower_old_dir_dentry, lower_new_dir_dentry);
 dput(lower_new_dentry->d_parent);
 dput(lower_old_dentry->d_parent);
 dput(lower_new_dentry);
 dput(lower_old_dentry);
 return rc;
}
