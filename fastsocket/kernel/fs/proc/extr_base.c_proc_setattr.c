
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct iattr {int ia_valid; } ;
struct dentry {struct inode* d_inode; } ;


 int ATTR_MODE ;
 int EPERM ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int inode_setattr (struct inode*,struct iattr*) ;

int proc_setattr(struct dentry *dentry, struct iattr *attr)
{
 int error;
 struct inode *inode = dentry->d_inode;

 if (attr->ia_valid & ATTR_MODE)
  return -EPERM;

 error = inode_change_ok(inode, attr);
 if (!error)
  error = inode_setattr(inode, attr);
 return error;
}
