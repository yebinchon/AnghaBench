
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cr_group_info; } ;
struct svc_rqst {TYPE_1__ rq_cred; int * rq_client; } ;


 int auth_domain_put (int *) ;
 int put_group_info (int *) ;

__attribute__((used)) static int
svcauth_unix_release(struct svc_rqst *rqstp)
{


 if (rqstp->rq_client)
  auth_domain_put(rqstp->rq_client);
 rqstp->rq_client = ((void*)0);
 if (rqstp->rq_cred.cr_group_info)
  put_group_info(rqstp->rq_cred.cr_group_info);
 rqstp->rq_cred.cr_group_info = ((void*)0);

 return 0;
}
