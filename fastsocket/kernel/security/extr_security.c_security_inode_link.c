
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int d_inode; } ;
struct TYPE_2__ {int (* inode_link ) (struct dentry*,struct inode*,struct dentry*) ;} ;


 int IS_PRIVATE (int ) ;
 TYPE_1__* security_ops ;
 int stub1 (struct dentry*,struct inode*,struct dentry*) ;
 scalar_t__ unlikely (int ) ;

int security_inode_link(struct dentry *old_dentry, struct inode *dir,
    struct dentry *new_dentry)
{
 if (unlikely(IS_PRIVATE(old_dentry->d_inode)))
  return 0;
 return security_ops->inode_link(old_dentry, dir, new_dentry);
}
