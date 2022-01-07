
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* d_instantiate ) (struct dentry*,struct inode*) ;} ;


 scalar_t__ IS_PRIVATE (struct inode*) ;
 TYPE_1__* security_ops ;
 int stub1 (struct dentry*,struct inode*) ;
 scalar_t__ unlikely (int) ;

void security_d_instantiate(struct dentry *dentry, struct inode *inode)
{
 if (unlikely(inode && IS_PRIVATE(inode)))
  return;
 security_ops->d_instantiate(dentry, inode);
}
