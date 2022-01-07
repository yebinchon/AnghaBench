
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; } ;


 unsigned int ATTR_SIZE ;
 int generic_setattr (struct inode*,struct iattr*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int vmtruncate (struct inode*,scalar_t__) ;

int inode_setattr(struct inode *inode, struct iattr *attr)
{
 unsigned int ia_valid = attr->ia_valid;

 if (ia_valid & ATTR_SIZE &&
     attr->ia_size != i_size_read(inode)) {
  int error;

  error = vmtruncate(inode, attr->ia_size);
  if (error)
   return error;
 }

 generic_setattr(inode, attr);

 mark_inode_dirty(inode);

 return 0;
}
