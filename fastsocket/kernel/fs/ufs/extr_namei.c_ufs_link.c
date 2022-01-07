
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_nlink; int i_count; int i_ctime; } ;
struct dentry {struct inode* d_inode; } ;


 int CURRENT_TIME_SEC ;
 int EMLINK ;
 scalar_t__ UFS_LINK_MAX ;
 int atomic_inc (int *) ;
 int inode_inc_link_count (struct inode*) ;
 int lock_kernel () ;
 int ufs_add_nondir (struct dentry*,struct inode*) ;
 int unlock_kernel () ;

__attribute__((used)) static int ufs_link (struct dentry * old_dentry, struct inode * dir,
 struct dentry *dentry)
{
 struct inode *inode = old_dentry->d_inode;
 int error;

 lock_kernel();
 if (inode->i_nlink >= UFS_LINK_MAX) {
  unlock_kernel();
  return -EMLINK;
 }

 inode->i_ctime = CURRENT_TIME_SEC;
 inode_inc_link_count(inode);
 atomic_inc(&inode->i_count);

 error = ufs_add_nondir(dentry, inode);
 unlock_kernel();
 return error;
}
