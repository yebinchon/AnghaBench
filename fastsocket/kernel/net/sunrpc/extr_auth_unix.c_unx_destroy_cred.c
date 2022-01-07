
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int cr_rcu; } ;


 int call_rcu (int *,int ) ;
 int unx_free_cred_callback ;

__attribute__((used)) static void
unx_destroy_cred(struct rpc_cred *cred)
{
 call_rcu(&cred->cr_rcu, unx_free_cred_callback);
}
