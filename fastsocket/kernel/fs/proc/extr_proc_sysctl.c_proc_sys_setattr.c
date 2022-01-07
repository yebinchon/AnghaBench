
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct iattr {int ia_valid; } ;
struct dentry {struct inode* d_inode; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_UID ;
 int EPERM ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int inode_setattr (struct inode*,struct iattr*) ;

__attribute__((used)) static int proc_sys_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = dentry->d_inode;
 int error;

 if (attr->ia_valid & (ATTR_MODE | ATTR_UID | ATTR_GID))
  return -EPERM;

 error = inode_change_ok(inode, attr);
 if (!error)
  error = inode_setattr(inode, attr);

 return error;
}
