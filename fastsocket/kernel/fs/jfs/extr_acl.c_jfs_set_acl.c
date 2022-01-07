
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tid_t ;
struct posix_acl {int a_count; } ;
struct inode {int i_mode; } ;




 int EACCES ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 char* POSIX_ACL_XATTR_ACCESS ;
 char* POSIX_ACL_XATTR_DEFAULT ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int __jfs_setxattr (int ,struct inode*,char*,char*,int,int ) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int posix_acl_to_xattr (struct posix_acl*,char*,int) ;
 int posix_acl_xattr_size (int ) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;

__attribute__((used)) static int jfs_set_acl(tid_t tid, struct inode *inode, int type,
         struct posix_acl *acl)
{
 char *ea_name;
 int rc;
 int size = 0;
 char *value = ((void*)0);

 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;

 switch(type) {
  case 129:
   ea_name = POSIX_ACL_XATTR_ACCESS;
   break;
  case 128:
   ea_name = POSIX_ACL_XATTR_DEFAULT;
   if (!S_ISDIR(inode->i_mode))
    return acl ? -EACCES : 0;
   break;
  default:
   return -EINVAL;
 }
 if (acl) {
  size = posix_acl_xattr_size(acl->a_count);
  value = kmalloc(size, GFP_KERNEL);
  if (!value)
   return -ENOMEM;
  rc = posix_acl_to_xattr(acl, value, size);
  if (rc < 0)
   goto out;
 }
 rc = __jfs_setxattr(tid, inode, ea_name, value, size, 0);
out:
 kfree(value);

 if (!rc)
  set_cached_acl(inode, type, acl);

 return rc;
}
