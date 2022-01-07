
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 scalar_t__ IS_PRIVATE (struct inode*) ;
 scalar_t__ STAT_DATA_V1 ;
 int generic_permission (struct inode*,int,int *) ;
 scalar_t__ get_inode_sd_version (struct inode*) ;
 int * reiserfs_check_acl ;

int reiserfs_permission(struct inode *inode, int mask)
{




 if (IS_PRIVATE(inode))
  return 0;
 return generic_permission(inode, mask, ((void*)0));
}
