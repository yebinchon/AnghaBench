
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rpc_cred; int rpc_resp; int rpc_argp; int rpc_proc; } ;
struct rpc_task {TYPE_1__ tk_msg; } ;
struct rpc_message {int * rpc_cred; int rpc_resp; int rpc_argp; int rpc_proc; } ;


 int get_rpccred (int *) ;

__attribute__((used)) static void
rpc_task_set_rpc_message(struct rpc_task *task, const struct rpc_message *msg)
{
 if (msg != ((void*)0)) {
  task->tk_msg.rpc_proc = msg->rpc_proc;
  task->tk_msg.rpc_argp = msg->rpc_argp;
  task->tk_msg.rpc_resp = msg->rpc_resp;
  if (msg->rpc_cred != ((void*)0))
   task->tk_msg.rpc_cred = get_rpccred(msg->rpc_cred);
 }
}
