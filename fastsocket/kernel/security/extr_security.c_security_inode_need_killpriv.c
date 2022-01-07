
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int (* inode_need_killpriv ) (struct dentry*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct dentry*) ;

int security_inode_need_killpriv(struct dentry *dentry)
{
 return security_ops->inode_need_killpriv(dentry);
}
