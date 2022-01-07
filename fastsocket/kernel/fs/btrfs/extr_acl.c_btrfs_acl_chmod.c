
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_mode; } ;


 int ACL_TYPE_ACCESS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (struct posix_acl*) ;
 int IS_POSIXACL (struct inode*) ;
 int PTR_ERR (struct posix_acl*) ;
 scalar_t__ S_ISLNK (int ) ;
 struct posix_acl* btrfs_get_acl (struct inode*,int ) ;
 int btrfs_set_acl (int *,struct inode*,struct posix_acl*,int ) ;
 int posix_acl_chmod_masq (struct posix_acl*,int ) ;
 struct posix_acl* posix_acl_clone (struct posix_acl*,int ) ;
 int posix_acl_release (struct posix_acl*) ;

int btrfs_acl_chmod(struct inode *inode)
{
 struct posix_acl *acl, *clone;
 int ret = 0;

 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;

 if (!IS_POSIXACL(inode))
  return 0;

 acl = btrfs_get_acl(inode, ACL_TYPE_ACCESS);
 if (IS_ERR_OR_NULL(acl))
  return PTR_ERR(acl);

 clone = posix_acl_clone(acl, GFP_KERNEL);
 posix_acl_release(acl);
 if (!clone)
  return -ENOMEM;

 ret = posix_acl_chmod_masq(clone, inode->i_mode);
 if (!ret)
  ret = btrfs_set_acl(((void*)0), inode, clone, ACL_TYPE_ACCESS);

 posix_acl_release(clone);

 return ret;
}
