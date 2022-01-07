
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int ENODATA ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 struct posix_acl* jffs2_get_acl (struct inode*,int) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_to_xattr (struct posix_acl*,void*,size_t) ;

__attribute__((used)) static int jffs2_acl_getxattr(struct inode *inode, int type, void *buffer, size_t size)
{
 struct posix_acl *acl;
 int rc;

 acl = jffs2_get_acl(inode, type);
 if (IS_ERR(acl))
  return PTR_ERR(acl);
 if (!acl)
  return -ENODATA;
 rc = posix_acl_to_xattr(acl, buffer, size);
 posix_acl_release(acl);

 return rc;
}
