
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kern_ipc_perm {int dummy; } ;
struct TYPE_2__ {int (* ipc_permission ) (struct kern_ipc_perm*,short) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct kern_ipc_perm*,short) ;

int security_ipc_permission(struct kern_ipc_perm *ipcp, short flag)
{
 return security_ops->ipc_permission(ipcp, flag);
}
