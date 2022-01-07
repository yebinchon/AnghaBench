
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_sb; } ;


 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int POSIX_ACL ;
 int PTR_ERR (struct posix_acl*) ;
 int ext2_set_acl (struct inode*,int,struct posix_acl*) ;
 int is_owner_or_cap (struct inode*) ;
 struct posix_acl* posix_acl_from_xattr (void const*,size_t) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_valid (struct posix_acl*) ;
 int test_opt (int ,int ) ;

__attribute__((used)) static int
ext2_xattr_set_acl(struct inode *inode, int type, const void *value,
     size_t size)
{
 struct posix_acl *acl;
 int error;

 if (!test_opt(inode->i_sb, POSIX_ACL))
  return -EOPNOTSUPP;
 if (!is_owner_or_cap(inode))
  return -EPERM;

 if (value) {
  acl = posix_acl_from_xattr(value, size);
  if (IS_ERR(acl))
   return PTR_ERR(acl);
  else if (acl) {
   error = posix_acl_valid(acl);
   if (error)
    goto release_and_out;
  }
 } else
  acl = ((void*)0);

 error = ext2_set_acl(inode, type, acl);

release_and_out:
 posix_acl_release(acl);
 return error;
}
