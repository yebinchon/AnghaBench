
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;


 int dprintk (char*,struct rpc_clnt*,struct rpc_clnt*) ;
 struct rpc_clnt* rpcb_local_clnt ;
 struct rpc_clnt* rpcb_local_clnt4 ;
 int rpcb_users ;
 int smp_wmb () ;

__attribute__((used)) static void rpcb_set_local(struct rpc_clnt *clnt, struct rpc_clnt *clnt4)
{

 rpcb_local_clnt = clnt;
 rpcb_local_clnt4 = clnt4;
 smp_wmb();
 rpcb_users = 1;
 dprintk("RPC:       created new rpcb local clients (rpcb_local_clnt: "
   "%p, rpcb_local_clnt4: %p)\n", rpcb_local_clnt,
   rpcb_local_clnt4);
}
