
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int IS_POSIXACL (struct inode*) ;
 int PTR_ERR (struct posix_acl*) ;
 int btrfs_set_acl (int *,struct inode*,struct posix_acl*,int) ;
 int is_owner_or_cap (struct inode*) ;
 struct posix_acl* posix_acl_from_xattr (void const*,size_t) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_valid (struct posix_acl*) ;

__attribute__((used)) static int btrfs_xattr_set_acl(struct inode *inode, int type,
          const void *value, size_t size)
{
 int ret;
 struct posix_acl *acl = ((void*)0);

 if (!is_owner_or_cap(inode))
  return -EPERM;

 if (!IS_POSIXACL(inode))
  return -EOPNOTSUPP;

 if (value) {
  acl = posix_acl_from_xattr(value, size);
  if (IS_ERR(acl))
   return PTR_ERR(acl);

  if (acl) {
   ret = posix_acl_valid(acl);
   if (ret)
    goto out;
  }
 }

 ret = btrfs_set_acl(((void*)0), inode, acl, type);
out:
 posix_acl_release(acl);

 return ret;
}
