
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;


 int rpc_shutdown_client (struct rpc_clnt*) ;
 int rpcb_clnt_lock ;
 struct rpc_clnt* rpcb_local_clnt ;
 struct rpc_clnt* rpcb_local_clnt4 ;
 scalar_t__ rpcb_users ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rpcb_put_local(void)
{
 struct rpc_clnt *clnt = rpcb_local_clnt;
 struct rpc_clnt *clnt4 = rpcb_local_clnt4;
 int shutdown;

 spin_lock(&rpcb_clnt_lock);
 if (--rpcb_users == 0) {
  rpcb_local_clnt = ((void*)0);
  rpcb_local_clnt4 = ((void*)0);
 }
 shutdown = !rpcb_users;
 spin_unlock(&rpcb_clnt_lock);

 if (shutdown) {



  if (clnt4)
   rpc_shutdown_client(clnt4);
  if (clnt)
   rpc_shutdown_client(clnt);
 }
}
