
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {scalar_t__ a_count; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef int ssize_t ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int ENODATA ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int POSIX_ACL_XATTR_ACCESS ;
 int POSIX_ACL_XATTR_DEFAULT ;
 int PTR_ERR (struct posix_acl*) ;
 struct posix_acl* nfs3_proc_getacl (struct inode*,int) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_to_xattr (struct posix_acl*,void*,size_t) ;
 scalar_t__ strcmp (char const*,int ) ;

ssize_t nfs3_getxattr(struct dentry *dentry, const char *name,
  void *buffer, size_t size)
{
 struct inode *inode = dentry->d_inode;
 struct posix_acl *acl;
 int type, error = 0;

 if (strcmp(name, POSIX_ACL_XATTR_ACCESS) == 0)
  type = ACL_TYPE_ACCESS;
 else if (strcmp(name, POSIX_ACL_XATTR_DEFAULT) == 0)
  type = ACL_TYPE_DEFAULT;
 else
  return -EOPNOTSUPP;

 acl = nfs3_proc_getacl(inode, type);
 if (IS_ERR(acl))
  return PTR_ERR(acl);
 else if (acl) {
  if (type == ACL_TYPE_ACCESS && acl->a_count == 0)
   error = -ENODATA;
  else
   error = posix_acl_to_xattr(acl, buffer, size);
  posix_acl_release(acl);
 } else
  error = -ENODATA;

 return error;
}
