
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cred {int dummy; } ;
struct TYPE_2__ {int (* kernel_act_as ) (struct cred*,int ) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct cred*,int ) ;

int security_kernel_act_as(struct cred *new, u32 secid)
{
 return security_ops->kernel_act_as(new, secid);
}
