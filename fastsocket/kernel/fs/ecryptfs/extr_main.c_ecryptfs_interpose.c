
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_sb; int i_state; int i_rdev; int i_mode; int * i_fop; int * i_op; } ;
struct dentry {int * d_op; struct inode* d_inode; } ;


 int EACCES ;
 int ECRYPTFS_INTERPOSE_FLAG_D_ADD ;
 int ESTALE ;
 int EXDEV ;
 int I_NEW ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int d_add (struct dentry*,struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int ecryptfs_dir_fops ;
 int ecryptfs_dir_iops ;
 int ecryptfs_dops ;
 int ecryptfs_inode_set ;
 int ecryptfs_inode_test ;
 scalar_t__ ecryptfs_superblock_to_lower (struct super_block*) ;
 int ecryptfs_symlink_iops ;
 int fsstack_copy_attr_all (struct inode*,struct inode*,int *) ;
 int fsstack_copy_inode_size (struct inode*,struct inode*) ;
 struct inode* iget5_locked (struct super_block*,unsigned long,int ,int ,struct inode*) ;
 int igrab (struct inode*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int iput (struct inode*) ;
 scalar_t__ special_file (int ) ;
 int unlock_new_inode (struct inode*) ;

int ecryptfs_interpose(struct dentry *lower_dentry, struct dentry *dentry,
         struct super_block *sb, u32 flags)
{
 struct inode *lower_inode;
 struct inode *inode;
 int rc = 0;

 lower_inode = lower_dentry->d_inode;
 if (lower_inode->i_sb != ecryptfs_superblock_to_lower(sb)) {
  rc = -EXDEV;
  goto out;
 }
 if (!igrab(lower_inode)) {
  rc = -ESTALE;
  goto out;
 }
 inode = iget5_locked(sb, (unsigned long)lower_inode,
        ecryptfs_inode_test, ecryptfs_inode_set,
        lower_inode);
 if (!inode) {
  rc = -EACCES;
  iput(lower_inode);
  goto out;
 }
 if (inode->i_state & I_NEW)
  unlock_new_inode(inode);
 else
  iput(lower_inode);
 if (S_ISLNK(lower_inode->i_mode))
  inode->i_op = &ecryptfs_symlink_iops;
 else if (S_ISDIR(lower_inode->i_mode))
  inode->i_op = &ecryptfs_dir_iops;
 if (S_ISDIR(lower_inode->i_mode))
  inode->i_fop = &ecryptfs_dir_fops;
 if (special_file(lower_inode->i_mode))
  init_special_inode(inode, lower_inode->i_mode,
       lower_inode->i_rdev);
 dentry->d_op = &ecryptfs_dops;
 fsstack_copy_attr_all(inode, lower_inode, ((void*)0));


 fsstack_copy_inode_size(inode, lower_inode);
 if (flags & ECRYPTFS_INTERPOSE_FLAG_D_ADD)
  d_add(dentry, inode);
 else
  d_instantiate(dentry, inode);
out:
 return rc;
}
