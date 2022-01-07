
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int dummy; } ;


 int generic_auth ;
 struct rpc_cred* rpcauth_lookupcred (int *,int ) ;

struct rpc_cred *rpc_lookup_cred(void)
{
 return rpcauth_lookupcred(&generic_auth, 0);
}
