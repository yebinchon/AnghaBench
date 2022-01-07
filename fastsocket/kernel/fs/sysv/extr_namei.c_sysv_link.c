
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_nlink; int i_count; int i_ctime; int i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {scalar_t__ s_link_max; } ;


 int CURRENT_TIME_SEC ;
 int EMLINK ;
 TYPE_1__* SYSV_SB (int ) ;
 int add_nondir (struct dentry*,struct inode*) ;
 int atomic_inc (int *) ;
 int inode_inc_link_count (struct inode*) ;

__attribute__((used)) static int sysv_link(struct dentry * old_dentry, struct inode * dir,
 struct dentry * dentry)
{
 struct inode *inode = old_dentry->d_inode;

 if (inode->i_nlink >= SYSV_SB(inode->i_sb)->s_link_max)
  return -EMLINK;

 inode->i_ctime = CURRENT_TIME_SEC;
 inode_inc_link_count(inode);
 atomic_inc(&inode->i_count);

 return add_nondir(dentry, inode);
}
