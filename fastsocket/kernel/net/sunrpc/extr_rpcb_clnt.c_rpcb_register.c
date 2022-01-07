
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpcbind_args {int r_prot; unsigned short r_port; int r_vers; int r_prog; } ;
struct rpc_message {int * rpc_proc; struct rpcbind_args* rpc_argp; } ;


 size_t RPCBPROC_SET ;
 size_t RPCBPROC_UNSET ;
 int dprintk (char*,char*,int ,int ,int,unsigned short) ;
 int rpcb_local_clnt ;
 int * rpcb_procedures2 ;
 int rpcb_register_call (int ,struct rpc_message*) ;

int rpcb_register(u32 prog, u32 vers, int prot, unsigned short port)
{
 struct rpcbind_args map = {
  .r_prog = prog,
  .r_vers = vers,
  .r_prot = prot,
  .r_port = port,
 };
 struct rpc_message msg = {
  .rpc_argp = &map,
 };

 dprintk("RPC:       %sregistering (%u, %u, %d, %u) with local "
   "rpcbind\n", (port ? "" : "un"),
   prog, vers, prot, port);

 msg.rpc_proc = &rpcb_procedures2[RPCBPROC_UNSET];
 if (port)
  msg.rpc_proc = &rpcb_procedures2[RPCBPROC_SET];

 return rpcb_register_call(rpcb_local_clnt, &msg);
}
