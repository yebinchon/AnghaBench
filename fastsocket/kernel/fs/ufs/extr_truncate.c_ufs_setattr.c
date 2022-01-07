
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; } ;
struct dentry {struct inode* d_inode; } ;
typedef int loff_t ;


 unsigned int ATTR_SIZE ;
 scalar_t__ i_size_read (struct inode*) ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int inode_setattr (struct inode*,struct iattr*) ;
 int ufs_truncate (struct inode*,int ) ;
 int vmtruncate (struct inode*,scalar_t__) ;

__attribute__((used)) static int ufs_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = dentry->d_inode;
 unsigned int ia_valid = attr->ia_valid;
 int error;

 error = inode_change_ok(inode, attr);
 if (error)
  return error;

 if (ia_valid & ATTR_SIZE &&
     attr->ia_size != i_size_read(inode)) {
  loff_t old_i_size = inode->i_size;
  error = vmtruncate(inode, attr->ia_size);
  if (error)
   return error;
  error = ufs_truncate(inode, old_i_size);
  if (error)
   return error;
 }
 return inode_setattr(inode, attr);
}
