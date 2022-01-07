
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred_cache {struct rpc_cred_cache* hashtable; } ;
struct rpc_auth {struct rpc_cred_cache* au_credcache; } ;


 int kfree (struct rpc_cred_cache*) ;
 int rpcauth_clear_credcache (struct rpc_cred_cache*) ;

void
rpcauth_destroy_credcache(struct rpc_auth *auth)
{
 struct rpc_cred_cache *cache = auth->au_credcache;

 if (cache) {
  auth->au_credcache = ((void*)0);
  rpcauth_clear_credcache(cache);
  kfree(cache->hashtable);
  kfree(cache);
 }
}
