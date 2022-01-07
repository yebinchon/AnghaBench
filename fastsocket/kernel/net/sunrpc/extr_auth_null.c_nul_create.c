
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;
struct rpc_auth {int au_count; } ;
typedef int rpc_authflavor_t ;


 int atomic_inc (int *) ;
 struct rpc_auth null_auth ;

__attribute__((used)) static struct rpc_auth *
nul_create(struct rpc_clnt *clnt, rpc_authflavor_t flavor)
{
 atomic_inc(&null_auth.au_count);
 return &null_auth;
}
