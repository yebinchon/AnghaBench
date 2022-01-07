
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int SGI_ACL_DEFAULT ;
 int S_ISDIR (int ) ;
 int xfs_acl_exists (struct inode*,int ) ;

int
posix_acl_default_exists(struct inode *inode)
{
 if (!S_ISDIR(inode->i_mode))
  return 0;
 return xfs_acl_exists(inode, SGI_ACL_DEFAULT);
}
