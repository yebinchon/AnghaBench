
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cred {int dummy; } ;
struct TYPE_2__ {int (* cred_commit ) (struct cred*,struct cred const*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct cred*,struct cred const*) ;

void security_commit_creds(struct cred *new, const struct cred *old)
{
 security_ops->cred_commit(new, old);
}
