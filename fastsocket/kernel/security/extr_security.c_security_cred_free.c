
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cred {int dummy; } ;
struct TYPE_2__ {int (* cred_free ) (struct cred*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct cred*) ;

void security_cred_free(struct cred *cred)
{
 security_ops->cred_free(cred);
}
