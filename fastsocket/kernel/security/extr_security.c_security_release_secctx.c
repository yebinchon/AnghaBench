
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* release_secctx ) (char*,int ) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (char*,int ) ;

void security_release_secctx(char *secdata, u32 seclen)
{
 security_ops->release_secctx(secdata, seclen);
}
