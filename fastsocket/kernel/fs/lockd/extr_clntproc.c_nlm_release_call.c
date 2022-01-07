
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_rqst {int a_host; int a_count; } ;


 int atomic_dec_and_test (int *) ;
 int kfree (struct nlm_rqst*) ;
 int nlm_release_host (int ) ;
 int nlmclnt_release_lockargs (struct nlm_rqst*) ;

void nlm_release_call(struct nlm_rqst *call)
{
 if (!atomic_dec_and_test(&call->a_count))
  return;
 nlm_release_host(call->a_host);
 nlmclnt_release_lockargs(call);
 kfree(call);
}
