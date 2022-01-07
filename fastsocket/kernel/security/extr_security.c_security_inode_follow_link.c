
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct dentry {int d_inode; } ;
struct TYPE_2__ {int (* inode_follow_link ) (struct dentry*,struct nameidata*) ;} ;


 int IS_PRIVATE (int ) ;
 TYPE_1__* security_ops ;
 int stub1 (struct dentry*,struct nameidata*) ;
 scalar_t__ unlikely (int ) ;

int security_inode_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 if (unlikely(IS_PRIVATE(dentry->d_inode)))
  return 0;
 return security_ops->inode_follow_link(dentry, nd);
}
