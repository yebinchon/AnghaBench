
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_acl {int dummy; } ;
struct inode {int dummy; } ;


 int ATTR_KERNOVAL ;
 int ATTR_ROOT ;
 int XFS_I (struct inode*) ;
 scalar_t__ xfs_attr_get (int ,unsigned char*,int *,int*,int) ;

__attribute__((used)) static int
xfs_acl_exists(struct inode *inode, unsigned char *name)
{
 int len = sizeof(struct xfs_acl);

 return (xfs_attr_get(XFS_I(inode), name, ((void*)0), &len,
       ATTR_ROOT|ATTR_KERNOVAL) == 0);
}
