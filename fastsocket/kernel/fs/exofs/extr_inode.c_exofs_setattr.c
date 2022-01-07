
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int inode_change_ok (struct inode*,struct iattr*) ;
 int inode_setattr (struct inode*,struct iattr*) ;

int exofs_setattr(struct dentry *dentry, struct iattr *iattr)
{
 struct inode *inode = dentry->d_inode;
 int error;

 error = inode_change_ok(inode, iattr);
 if (error)
  return error;

 error = inode_setattr(inode, iattr);
 return error;
}
