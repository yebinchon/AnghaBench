
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int (* inode_getsecctx ) (struct inode*,void**,int *) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct inode*,void**,int *) ;

int security_inode_getsecctx(struct inode *inode, void **ctx, u32 *ctxlen)
{
 return security_ops->inode_getsecctx(inode, ctx, ctxlen);
}
