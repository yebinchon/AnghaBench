
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iattr {int dummy; } ;
struct dentry {int d_inode; } ;
struct TYPE_2__ {int (* inode_setattr ) (struct dentry*,struct iattr*) ;} ;


 int IS_PRIVATE (int ) ;
 TYPE_1__* security_ops ;
 int stub1 (struct dentry*,struct iattr*) ;
 scalar_t__ unlikely (int ) ;

int security_inode_setattr(struct dentry *dentry, struct iattr *attr)
{
 if (unlikely(IS_PRIVATE(dentry->d_inode)))
  return 0;
 return security_ops->inode_setattr(dentry, attr);
}
