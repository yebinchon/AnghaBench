
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_mode; } ;
struct generic_acl_operations {int (* setacl ) (struct inode*,int ,struct posix_acl*) ;struct posix_acl* (* getacl ) (struct inode*,int ) ;} ;


 int ACL_TYPE_ACCESS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ S_ISLNK (int ) ;
 int posix_acl_chmod_masq (struct posix_acl*,int ) ;
 struct posix_acl* posix_acl_clone (struct posix_acl*,int ) ;
 int posix_acl_release (struct posix_acl*) ;
 struct posix_acl* stub1 (struct inode*,int ) ;
 int stub2 (struct inode*,int ,struct posix_acl*) ;

int
generic_acl_chmod(struct inode *inode, struct generic_acl_operations *ops)
{
 struct posix_acl *acl, *clone;
 int error = 0;

 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;
 acl = ops->getacl(inode, ACL_TYPE_ACCESS);
 if (acl) {
  clone = posix_acl_clone(acl, GFP_KERNEL);
  posix_acl_release(acl);
  if (!clone)
   return -ENOMEM;
  error = posix_acl_chmod_masq(clone, inode->i_mode);
  if (!error)
   ops->setacl(inode, ACL_TYPE_ACCESS, clone);
  posix_acl_release(clone);
 }
 return error;
}
