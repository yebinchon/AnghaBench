
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int dummy; } ;
struct rpc_auth {int dummy; } ;
struct auth_cred {int dummy; } ;


 struct rpc_cred* rpcauth_lookup_credcache (struct rpc_auth*,struct auth_cred*,int) ;

__attribute__((used)) static struct rpc_cred *
gss_lookup_cred(struct rpc_auth *auth, struct auth_cred *acred, int flags)
{
 return rpcauth_lookup_credcache(auth, acred, flags);
}
