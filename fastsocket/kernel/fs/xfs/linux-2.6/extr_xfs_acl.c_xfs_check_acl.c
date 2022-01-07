
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int ACL_TYPE_ACCESS ;
 int EAGAIN ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 struct xfs_inode* XFS_I (struct inode*) ;
 int XFS_IFORK_Q (struct xfs_inode*) ;
 int posix_acl_permission (struct inode*,struct posix_acl*,int) ;
 int posix_acl_release (struct posix_acl*) ;
 int trace_xfs_check_acl (struct xfs_inode*) ;
 struct posix_acl* xfs_get_acl (struct inode*,int ) ;

int
xfs_check_acl(struct inode *inode, int mask)
{
 struct xfs_inode *ip = XFS_I(inode);
 struct posix_acl *acl;
 int error = -EAGAIN;

 trace_xfs_check_acl(ip);





 if (!XFS_IFORK_Q(ip))
  return -EAGAIN;

 acl = xfs_get_acl(inode, ACL_TYPE_ACCESS);
 if (IS_ERR(acl))
  return PTR_ERR(acl);
 if (acl) {
  error = posix_acl_permission(inode, acl, mask);
  posix_acl_release(acl);
 }

 return error;
}
