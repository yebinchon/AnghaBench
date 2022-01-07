
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int SGI_ACL_FILE ;
 int xfs_acl_exists (struct inode*,int ) ;

int
posix_acl_access_exists(struct inode *inode)
{
 return xfs_acl_exists(inode, SGI_ACL_FILE);
}
