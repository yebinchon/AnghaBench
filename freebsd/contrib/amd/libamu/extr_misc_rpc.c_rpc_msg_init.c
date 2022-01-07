
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int voidp ;
typedef void* u_long ;
struct TYPE_2__ {void* cb_proc; void* cb_vers; void* cb_prog; int cb_rpcvers; } ;
struct rpc_msg {TYPE_1__ rm_call; int rm_direction; scalar_t__ rm_xid; } ;


 int CALL ;
 int RPC_MSG_VERSION ;
 int memset (int ,int ,int) ;

void
rpc_msg_init(struct rpc_msg *mp, u_long prog, u_long vers, u_long proc)
{



  memset((voidp) mp, 0, sizeof(*mp));
  mp->rm_xid = 0;
  mp->rm_direction = CALL;
  mp->rm_call.cb_rpcvers = RPC_MSG_VERSION;
  mp->rm_call.cb_prog = prog;
  mp->rm_call.cb_vers = vers;
  mp->rm_call.cb_proc = proc;
}
