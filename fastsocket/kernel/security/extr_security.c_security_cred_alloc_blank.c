
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cred {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int (* cred_alloc_blank ) (struct cred*,int ) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct cred*,int ) ;

int security_cred_alloc_blank(struct cred *cred, gfp_t gfp)
{
 return security_ops->cred_alloc_blank(cred, gfp);
}
