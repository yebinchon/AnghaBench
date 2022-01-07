
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;
struct rpc_auth {int au_count; } ;
typedef int rpc_authflavor_t ;


 int atomic_inc (int *) ;
 int dprintk (char*,struct rpc_clnt*) ;
 struct rpc_auth unix_auth ;

__attribute__((used)) static struct rpc_auth *
unx_create(struct rpc_clnt *clnt, rpc_authflavor_t flavor)
{
 dprintk("RPC:       creating UNIX authenticator for client %p\n",
   clnt);
 atomic_inc(&unix_auth.au_count);
 return &unix_auth;
}
