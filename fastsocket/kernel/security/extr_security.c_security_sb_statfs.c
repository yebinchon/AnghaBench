
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int (* sb_statfs ) (struct dentry*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct dentry*) ;

int security_sb_statfs(struct dentry *dentry)
{
 return security_ops->sb_statfs(dentry);
}
