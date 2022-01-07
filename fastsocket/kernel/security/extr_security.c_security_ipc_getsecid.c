
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kern_ipc_perm {int dummy; } ;
struct TYPE_2__ {int (* ipc_getsecid ) (struct kern_ipc_perm*,int *) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct kern_ipc_perm*,int *) ;

void security_ipc_getsecid(struct kern_ipc_perm *ipcp, u32 *secid)
{
 security_ops->ipc_getsecid(ipcp, secid);
}
