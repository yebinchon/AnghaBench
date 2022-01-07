
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;


 int rpc_wait_for_completion_task (struct rpc_task*) ;

__attribute__((used)) static int nfs4_wait_for_completion_rpc_task(struct rpc_task *task)
{
 int ret;

 ret = rpc_wait_for_completion_task(task);
 return ret;
}
