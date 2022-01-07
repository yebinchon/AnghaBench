
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int ENODATA ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int IS_POSIXACL (struct inode*) ;
 int PTR_ERR (struct posix_acl*) ;
 struct posix_acl* btrfs_get_acl (struct inode*,int) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_to_xattr (struct posix_acl*,void*,size_t) ;

__attribute__((used)) static int btrfs_xattr_get_acl(struct inode *inode, int type,
          void *value, size_t size)
{
 struct posix_acl *acl;
 int ret = 0;

 if (!IS_POSIXACL(inode))
  return -EOPNOTSUPP;

 acl = btrfs_get_acl(inode, type);

 if (IS_ERR(acl))
  return PTR_ERR(acl);
 if (acl == ((void*)0))
  return -ENODATA;
 ret = posix_acl_to_xattr(acl, value, size);
 posix_acl_release(acl);

 return ret;
}
