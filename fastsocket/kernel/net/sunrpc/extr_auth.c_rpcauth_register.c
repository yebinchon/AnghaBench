
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_authops {size_t au_flavor; } ;
typedef size_t rpc_authflavor_t ;


 int EINVAL ;
 int EPERM ;
 size_t RPC_AUTH_MAXFLAVOR ;
 struct rpc_authops const** auth_flavors ;
 int rpc_authflavor_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
rpcauth_register(const struct rpc_authops *ops)
{
 rpc_authflavor_t flavor;
 int ret = -EPERM;

 if ((flavor = ops->au_flavor) >= RPC_AUTH_MAXFLAVOR)
  return -EINVAL;
 spin_lock(&rpc_authflavor_lock);
 if (auth_flavors[flavor] == ((void*)0)) {
  auth_flavors[flavor] = ops;
  ret = 0;
 }
 spin_unlock(&rpc_authflavor_lock);
 return ret;
}
