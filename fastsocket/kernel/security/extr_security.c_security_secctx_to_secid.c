
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* secctx_to_secid ) (char const*,int ,int *) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (char const*,int ,int *) ;

int security_secctx_to_secid(const char *secdata, u32 seclen, u32 *secid)
{
 return security_ops->secctx_to_secid(secdata, seclen, secid);
}
