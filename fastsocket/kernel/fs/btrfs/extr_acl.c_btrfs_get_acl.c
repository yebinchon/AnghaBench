
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 struct posix_acl* ACL_NOT_CACHED ;


 int BUG () ;
 int EIO ;
 int ENODATA ;
 int ENOENT ;
 int ENOMEM ;
 struct posix_acl* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int IS_ERR (struct posix_acl*) ;
 int IS_POSIXACL (struct inode*) ;
 char* POSIX_ACL_XATTR_ACCESS ;
 char* POSIX_ACL_XATTR_DEFAULT ;
 int __btrfs_getxattr (struct inode*,char const*,char*,int) ;
 struct posix_acl* get_cached_acl (struct inode*,int) ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 struct posix_acl* posix_acl_from_xattr (char*,int) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;

__attribute__((used)) static struct posix_acl *btrfs_get_acl(struct inode *inode, int type)
{
 int size;
 const char *name;
 char *value = ((void*)0);
 struct posix_acl *acl;

 if (!IS_POSIXACL(inode))
  return ((void*)0);

 acl = get_cached_acl(inode, type);
 if (acl != ACL_NOT_CACHED)
  return acl;

 switch (type) {
 case 129:
  name = POSIX_ACL_XATTR_ACCESS;
  break;
 case 128:
  name = POSIX_ACL_XATTR_DEFAULT;
  break;
 default:
  BUG();
 }

 size = __btrfs_getxattr(inode, name, "", 0);
 if (size > 0) {
  value = kzalloc(size, GFP_NOFS);
  if (!value)
   return ERR_PTR(-ENOMEM);
  size = __btrfs_getxattr(inode, name, value, size);
 }
 if (size > 0) {
  acl = posix_acl_from_xattr(value, size);
 } else if (size == -ENOENT || size == -ENODATA || size == 0) {

  acl = ((void*)0);
 } else {
  acl = ERR_PTR(-EIO);
 }
 kfree(value);

 if (!IS_ERR(acl))
  set_cached_acl(inode, type, acl);

 return acl;
}
