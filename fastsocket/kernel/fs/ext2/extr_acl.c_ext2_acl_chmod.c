
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_mode; int i_sb; } ;


 int ACL_TYPE_ACCESS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int POSIX_ACL ;
 int PTR_ERR (struct posix_acl*) ;
 scalar_t__ S_ISLNK (int ) ;
 struct posix_acl* ext2_get_acl (struct inode*,int ) ;
 int ext2_set_acl (struct inode*,int ,struct posix_acl*) ;
 int posix_acl_chmod_masq (struct posix_acl*,int ) ;
 struct posix_acl* posix_acl_clone (struct posix_acl*,int ) ;
 int posix_acl_release (struct posix_acl*) ;
 int test_opt (int ,int ) ;

int
ext2_acl_chmod(struct inode *inode)
{
 struct posix_acl *acl, *clone;
        int error;

 if (!test_opt(inode->i_sb, POSIX_ACL))
  return 0;
 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;
 acl = ext2_get_acl(inode, ACL_TYPE_ACCESS);
 if (IS_ERR(acl) || !acl)
  return PTR_ERR(acl);
 clone = posix_acl_clone(acl, GFP_KERNEL);
 posix_acl_release(acl);
 if (!clone)
  return -ENOMEM;
 error = posix_acl_chmod_masq(clone, inode->i_mode);
 if (!error)
  error = ext2_set_acl(inode, ACL_TYPE_ACCESS, clone);
 posix_acl_release(clone);
 return error;
}
