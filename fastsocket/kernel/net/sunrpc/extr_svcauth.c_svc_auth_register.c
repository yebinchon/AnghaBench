
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_ops {int dummy; } ;
typedef size_t rpc_authflavor_t ;


 int EINVAL ;
 size_t RPC_AUTH_MAXFLAVOR ;
 struct auth_ops** authtab ;
 int authtab_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
svc_auth_register(rpc_authflavor_t flavor, struct auth_ops *aops)
{
 int rv = -EINVAL;
 spin_lock(&authtab_lock);
 if (flavor < RPC_AUTH_MAXFLAVOR && authtab[flavor] == ((void*)0)) {
  authtab[flavor] = aops;
  rv = 0;
 }
 spin_unlock(&authtab_lock);
 return rv;
}
