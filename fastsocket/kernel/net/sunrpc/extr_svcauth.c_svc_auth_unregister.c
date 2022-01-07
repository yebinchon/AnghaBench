
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t rpc_authflavor_t ;


 size_t RPC_AUTH_MAXFLAVOR ;
 int ** authtab ;
 int authtab_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
svc_auth_unregister(rpc_authflavor_t flavor)
{
 spin_lock(&authtab_lock);
 if (flavor < RPC_AUTH_MAXFLAVOR)
  authtab[flavor] = ((void*)0);
 spin_unlock(&authtab_lock);
}
