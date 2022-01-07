
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_auth {TYPE_1__* au_ops; int au_count; } ;
struct TYPE_2__ {int (* destroy ) (struct rpc_auth*) ;} ;


 int atomic_dec_and_test (int *) ;
 int stub1 (struct rpc_auth*) ;

void
rpcauth_release(struct rpc_auth *auth)
{
 if (!atomic_dec_and_test(&auth->au_count))
  return;
 auth->au_ops->destroy(auth);
}
