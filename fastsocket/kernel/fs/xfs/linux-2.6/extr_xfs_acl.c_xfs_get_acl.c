
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;
struct xfs_acl {int dummy; } ;
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 struct posix_acl* ACL_NOT_CACHED ;


 int ATTR_ROOT ;
 int BUG () ;
 int ENOATTR ;
 int ENOMEM ;
 struct posix_acl* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 unsigned char* SGI_ACL_DEFAULT ;
 unsigned char* SGI_ACL_FILE ;
 struct xfs_inode* XFS_I (struct inode*) ;
 struct posix_acl* get_cached_acl (struct inode*,int) ;
 int kfree (struct xfs_acl*) ;
 struct xfs_acl* kzalloc (int,int ) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;
 struct posix_acl* xfs_acl_from_disk (struct xfs_acl*) ;
 int xfs_attr_get (struct xfs_inode*,unsigned char*,unsigned char*,int*,int ) ;

struct posix_acl *
xfs_get_acl(struct inode *inode, int type)
{
 struct xfs_inode *ip = XFS_I(inode);
 struct posix_acl *acl;
 struct xfs_acl *xfs_acl;
 int len = sizeof(struct xfs_acl);
 unsigned char *ea_name;
 int error;

 acl = get_cached_acl(inode, type);
 if (acl != ACL_NOT_CACHED)
  return acl;

 switch (type) {
 case 129:
  ea_name = SGI_ACL_FILE;
  break;
 case 128:
  ea_name = SGI_ACL_DEFAULT;
  break;
 default:
  BUG();
 }






 xfs_acl = kzalloc(sizeof(struct xfs_acl), GFP_KERNEL);
 if (!xfs_acl)
  return ERR_PTR(-ENOMEM);

 error = -xfs_attr_get(ip, ea_name, (unsigned char *)xfs_acl,
       &len, ATTR_ROOT);
 if (error) {





  if (error == -ENOATTR) {
   acl = ((void*)0);
   goto out_update_cache;
  }
  goto out;
 }

 acl = xfs_acl_from_disk(xfs_acl);
 if (IS_ERR(acl))
  goto out;

 out_update_cache:
 set_cached_acl(inode, type, acl);
 out:
 kfree(xfs_acl);
 return acl;
}
