
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int EPERM ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 int is_owner_or_cap (struct inode*) ;
 int jffs2_set_acl (struct inode*,int,struct posix_acl*) ;
 struct posix_acl* posix_acl_from_xattr (void const*,size_t) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_valid (struct posix_acl*) ;

__attribute__((used)) static int jffs2_acl_setxattr(struct inode *inode, int type, const void *value, size_t size)
{
 struct posix_acl *acl;
 int rc;

 if (!is_owner_or_cap(inode))
  return -EPERM;

 if (value) {
  acl = posix_acl_from_xattr(value, size);
  if (IS_ERR(acl))
   return PTR_ERR(acl);
  if (acl) {
   rc = posix_acl_valid(acl);
   if (rc)
    goto out;
  }
 } else {
  acl = ((void*)0);
 }
 rc = jffs2_set_acl(inode, type, acl);
 out:
 posix_acl_release(acl);
 return rc;
}
