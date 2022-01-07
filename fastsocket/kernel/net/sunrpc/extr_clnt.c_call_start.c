
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rpc_proc; } ;
struct rpc_task {int tk_action; TYPE_2__ tk_msg; int tk_pid; struct rpc_clnt* tk_client; } ;
struct rpc_clnt {TYPE_3__* cl_stats; int cl_vers; int cl_protname; } ;
struct TYPE_6__ {int rpccnt; } ;
struct TYPE_4__ {int p_count; } ;


 scalar_t__ RPC_IS_ASYNC (struct rpc_task*) ;
 int call_reserve ;
 int dprintk (char*,int ,int ,int ,int ,char*) ;
 int rpc_proc_name (struct rpc_task*) ;

__attribute__((used)) static void
call_start(struct rpc_task *task)
{
 struct rpc_clnt *clnt = task->tk_client;

 dprintk("RPC: %5u call_start %s%d proc %s (%s)\n", task->tk_pid,
   clnt->cl_protname, clnt->cl_vers,
   rpc_proc_name(task),
   (RPC_IS_ASYNC(task) ? "async" : "sync"));


 task->tk_msg.rpc_proc->p_count++;
 clnt->cl_stats->rpccnt++;
 task->tk_action = call_reserve;
}
