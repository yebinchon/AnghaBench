
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 scalar_t__ is_bad_inode (struct inode*) ;

__attribute__((used)) static int
ncp_delete_dentry(struct dentry * dentry)
{
 struct inode *inode = dentry->d_inode;

 if (inode) {
  if (is_bad_inode(inode))
   return 1;
 } else
 {

 }
 return 0;
}
