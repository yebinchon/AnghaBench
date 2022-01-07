
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* inode_setsecctx ) (struct dentry*,void*,int ) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct dentry*,void*,int ) ;

int security_inode_setsecctx(struct dentry *dentry, void *ctx, u32 ctxlen)
{
 return security_ops->inode_setsecctx(dentry, ctx, ctxlen);
}
