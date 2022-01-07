
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* secid_to_secctx ) (int ,char**,int *) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (int ,char**,int *) ;

int security_secid_to_secctx(u32 secid, char **secdata, u32 *seclen)
{
 return security_ops->secid_to_secctx(secid, secdata, seclen);
}
