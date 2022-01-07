
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int dummy; } ;


 int gss_destroy_nullcred (struct rpc_cred*) ;
 scalar_t__ gss_destroying_context (struct rpc_cred*) ;

__attribute__((used)) static void
gss_destroy_cred(struct rpc_cred *cred)
{

 if (gss_destroying_context(cred))
  return;
 gss_destroy_nullcred(cred);
}
