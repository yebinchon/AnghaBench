
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int ACL_TYPE_ACCESS ;
 int EAGAIN ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 struct posix_acl* ext3_get_acl (struct inode*,int ) ;
 int posix_acl_permission (struct inode*,struct posix_acl*,int) ;
 int posix_acl_release (struct posix_acl*) ;

int
ext3_check_acl(struct inode *inode, int mask)
{
 struct posix_acl *acl = ext3_get_acl(inode, ACL_TYPE_ACCESS);

 if (IS_ERR(acl))
  return PTR_ERR(acl);
 if (acl) {
  int error = posix_acl_permission(inode, acl, mask);
  posix_acl_release(acl);
  return error;
 }

 return -EAGAIN;
}
