
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcbind_args {char* r_addr; int r_netid; int r_vers; int r_prog; } ;
struct rpc_message {int * rpc_proc; struct rpcbind_args* rpc_argp; } ;


 size_t RPCBPROC_UNSET ;
 int dprintk (char*,int ,int ,int ) ;
 int rpcb_local_clnt4 ;
 int * rpcb_procedures4 ;
 int rpcb_register_call (int ,struct rpc_message*) ;

__attribute__((used)) static int rpcb_unregister_all_protofamilies(struct rpc_message *msg)
{
 struct rpcbind_args *map = msg->rpc_argp;

 dprintk("RPC:       unregistering [%u, %u, '%s'] with "
  "local rpcbind\n",
   map->r_prog, map->r_vers, map->r_netid);

 map->r_addr = "";
 msg->rpc_proc = &rpcb_procedures4[RPCBPROC_UNSET];

 return rpcb_register_call(rpcb_local_clnt4, msg);
}
