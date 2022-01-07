
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_sb; } ;


 int ENODATA ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_to_xattr (struct posix_acl*,void*,size_t) ;
 struct posix_acl* reiserfs_get_acl (struct inode*,int) ;
 int reiserfs_posixacl (int ) ;

__attribute__((used)) static int
xattr_get_acl(struct inode *inode, int type, void *buffer, size_t size)
{
 struct posix_acl *acl;
 int error;

 if (!reiserfs_posixacl(inode->i_sb))
  return -EOPNOTSUPP;

 acl = reiserfs_get_acl(inode, type);
 if (IS_ERR(acl))
  return PTR_ERR(acl);
 if (acl == ((void*)0))
  return -ENODATA;
 error = posix_acl_to_xattr(acl, buffer, size);
 posix_acl_release(acl);

 return error;
}
