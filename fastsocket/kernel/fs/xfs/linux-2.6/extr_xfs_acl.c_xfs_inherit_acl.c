
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_mode; } ;
typedef int mode_t ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ S_ISDIR (int ) ;
 struct posix_acl* posix_acl_clone (struct posix_acl*,int ) ;
 int posix_acl_create_masq (struct posix_acl*,int *) ;
 int posix_acl_release (struct posix_acl*) ;
 int xfs_set_acl (struct inode*,int ,struct posix_acl*) ;
 int xfs_set_mode (struct inode*,int ) ;

int
xfs_inherit_acl(struct inode *inode, struct posix_acl *default_acl)
{
 struct posix_acl *clone;
 mode_t mode;
 int error = 0, inherit = 0;

 if (S_ISDIR(inode->i_mode)) {
  error = xfs_set_acl(inode, ACL_TYPE_DEFAULT, default_acl);
  if (error)
   return error;
 }

 clone = posix_acl_clone(default_acl, GFP_KERNEL);
 if (!clone)
  return -ENOMEM;

 mode = inode->i_mode;
 error = posix_acl_create_masq(clone, &mode);
 if (error < 0)
  goto out_release_clone;






 if (error > 0)
  inherit = 1;

 error = xfs_set_mode(inode, mode);
 if (error)
  goto out_release_clone;

 if (inherit)
  error = xfs_set_acl(inode, ACL_TYPE_ACCESS, clone);

 out_release_clone:
 posix_acl_release(clone);
 return error;
}
