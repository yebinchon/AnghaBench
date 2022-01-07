
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 struct posix_acl* ACL_NOT_CACHED ;


 int BUG () ;
 int ENODATA ;
 int ENOMEM ;
 int ENOSYS ;
 struct posix_acl* ERR_PTR (int) ;
 int GFP_NOFS ;
 int IS_ERR (struct posix_acl*) ;
 char* POSIX_ACL_XATTR_ACCESS ;
 char* POSIX_ACL_XATTR_DEFAULT ;
 struct posix_acl* get_cached_acl (struct inode*,int) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 struct posix_acl* posix_acl_from_disk (char*,int) ;
 int reiserfs_xattr_get (struct inode*,char*,char*,int) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;

struct posix_acl *reiserfs_get_acl(struct inode *inode, int type)
{
 char *name, *value;
 struct posix_acl *acl;
 int size;
 int retval;

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

 size = reiserfs_xattr_get(inode, name, ((void*)0), 0);
 if (size < 0) {
  if (size == -ENODATA || size == -ENOSYS) {
   set_cached_acl(inode, type, ((void*)0));
   return ((void*)0);
  }
  return ERR_PTR(size);
 }

 value = kmalloc(size, GFP_NOFS);
 if (!value)
  return ERR_PTR(-ENOMEM);

 retval = reiserfs_xattr_get(inode, name, value, size);
 if (retval == -ENODATA || retval == -ENOSYS) {


  acl = ((void*)0);
 } else if (retval < 0) {
  acl = ERR_PTR(retval);
 } else {
  acl = posix_acl_from_disk(value, retval);
 }
 if (!IS_ERR(acl))
  set_cached_acl(inode, type, acl);

 kfree(value);
 return acl;
}
