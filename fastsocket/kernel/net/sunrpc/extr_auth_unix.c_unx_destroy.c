
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_auth {int au_credcache; } ;


 int dprintk (char*,struct rpc_auth*) ;
 int rpcauth_clear_credcache (int ) ;

__attribute__((used)) static void
unx_destroy(struct rpc_auth *auth)
{
 dprintk("RPC:       destroying UNIX authenticator %p\n", auth);
 rpcauth_clear_credcache(auth->au_credcache);
}
