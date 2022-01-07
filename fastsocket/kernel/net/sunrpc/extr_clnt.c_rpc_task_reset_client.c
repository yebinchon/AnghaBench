
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct rpc_clnt {int dummy; } ;


 int rpc_task_release_client (struct rpc_task*) ;
 int rpc_task_set_client (struct rpc_task*,struct rpc_clnt*) ;

void rpc_task_reset_client(struct rpc_task *task, struct rpc_clnt *clnt)
{
 rpc_task_release_client(task);
 rpc_task_set_client(task, clnt);
}
