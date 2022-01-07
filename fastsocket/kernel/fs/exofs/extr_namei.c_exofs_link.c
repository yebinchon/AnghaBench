
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_nlink; int i_count; int i_ctime; } ;
struct dentry {struct inode* d_inode; } ;


 int CURRENT_TIME ;
 int EMLINK ;
 scalar_t__ EXOFS_LINK_MAX ;
 int atomic_inc (int *) ;
 int exofs_add_nondir (struct dentry*,struct inode*) ;
 int inode_inc_link_count (struct inode*) ;

__attribute__((used)) static int exofs_link(struct dentry *old_dentry, struct inode *dir,
  struct dentry *dentry)
{
 struct inode *inode = old_dentry->d_inode;

 if (inode->i_nlink >= EXOFS_LINK_MAX)
  return -EMLINK;

 inode->i_ctime = CURRENT_TIME;
 inode_inc_link_count(inode);
 atomic_inc(&inode->i_count);

 return exofs_add_nondir(dentry, inode);
}
