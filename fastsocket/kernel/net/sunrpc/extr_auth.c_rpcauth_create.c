
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rpc_clnt {struct rpc_auth* cl_auth; } ;
struct rpc_authops {int owner; struct rpc_auth* (* create ) (struct rpc_clnt*,int ) ;} ;
struct rpc_auth {int dummy; } ;
typedef int rpc_authflavor_t ;


 int EINVAL ;
 struct rpc_auth* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct rpc_auth*) ;
 size_t RPC_AUTH_MAXFLAVOR ;
 struct rpc_authops** auth_flavors ;
 int module_put (int ) ;
 size_t pseudoflavor_to_flavor (int ) ;
 int request_module (char*,size_t) ;
 int rpc_authflavor_lock ;
 int rpcauth_release (struct rpc_auth*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct rpc_auth* stub1 (struct rpc_clnt*,int ) ;
 int try_module_get (int ) ;

struct rpc_auth *
rpcauth_create(rpc_authflavor_t pseudoflavor, struct rpc_clnt *clnt)
{
 struct rpc_auth *auth;
 const struct rpc_authops *ops;
 u32 flavor = pseudoflavor_to_flavor(pseudoflavor);

 auth = ERR_PTR(-EINVAL);
 if (flavor >= RPC_AUTH_MAXFLAVOR)
  goto out;

 if ((ops = auth_flavors[flavor]) == ((void*)0))
  request_module("rpc-auth-%u", flavor);
 spin_lock(&rpc_authflavor_lock);
 ops = auth_flavors[flavor];
 if (ops == ((void*)0) || !try_module_get(ops->owner)) {
  spin_unlock(&rpc_authflavor_lock);
  goto out;
 }
 spin_unlock(&rpc_authflavor_lock);
 auth = ops->create(clnt, pseudoflavor);
 module_put(ops->owner);
 if (IS_ERR(auth))
  return auth;
 if (clnt->cl_auth)
  rpcauth_release(clnt->cl_auth);
 clnt->cl_auth = auth;

out:
 return auth;
}
