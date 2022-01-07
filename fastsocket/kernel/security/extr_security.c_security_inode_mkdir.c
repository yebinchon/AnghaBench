
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* inode_mkdir ) (struct inode*,struct dentry*,int) ;} ;


 int IS_PRIVATE (struct inode*) ;
 TYPE_1__* security_ops ;
 int stub1 (struct inode*,struct dentry*,int) ;
 scalar_t__ unlikely (int ) ;

int security_inode_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 if (unlikely(IS_PRIVATE(dir)))
  return 0;
 return security_ops->inode_mkdir(dir, dentry, mode);
}
