
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; } ;
struct iattr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dq_op; } ;
struct TYPE_3__ {scalar_t__ (* transfer ) (struct inode*,struct iattr*) ;} ;


 int IS_NOQUOTA (struct inode*) ;
 scalar_t__ NO_QUOTA ;
 scalar_t__ sb_any_quota_active (TYPE_2__*) ;
 scalar_t__ stub1 (struct inode*,struct iattr*) ;
 int vfs_dq_init (struct inode*) ;

int vfs_dq_transfer(struct inode *inode, struct iattr *iattr)
{
 if (sb_any_quota_active(inode->i_sb) && !IS_NOQUOTA(inode)) {
  vfs_dq_init(inode);
  if (inode->i_sb->dq_op->transfer(inode, iattr) == NO_QUOTA)
   return 1;
 }
 return 0;
}
