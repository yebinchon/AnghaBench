
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct dentry {int d_inode; } ;
typedef int dev_t ;


 int d_drop (struct dentry*) ;
 struct dentry* ecryptfs_dentry_to_lower (struct dentry*) ;
 int ecryptfs_interpose (struct dentry*,struct dentry*,int ,int ) ;
 int fsstack_copy_attr_times (struct inode*,int ) ;
 int fsstack_copy_inode_size (struct inode*,int ) ;
 struct dentry* lock_parent (struct dentry*) ;
 int unlock_dir (struct dentry*) ;
 int vfs_mknod (int ,struct dentry*,int,int ) ;

__attribute__((used)) static int
ecryptfs_mknod(struct inode *dir, struct dentry *dentry, int mode, dev_t dev)
{
 int rc;
 struct dentry *lower_dentry;
 struct dentry *lower_dir_dentry;

 lower_dentry = ecryptfs_dentry_to_lower(dentry);
 lower_dir_dentry = lock_parent(lower_dentry);
 rc = vfs_mknod(lower_dir_dentry->d_inode, lower_dentry, mode, dev);
 if (rc || !lower_dentry->d_inode)
  goto out;
 rc = ecryptfs_interpose(lower_dentry, dentry, dir->i_sb, 0);
 if (rc)
  goto out;
 fsstack_copy_attr_times(dir, lower_dir_dentry->d_inode);
 fsstack_copy_inode_size(dir, lower_dir_dentry->d_inode);
out:
 unlock_dir(lower_dir_dentry);
 if (!dentry->d_inode)
  d_drop(dentry);
 return rc;
}
