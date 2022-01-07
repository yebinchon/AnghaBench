
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int cl_tasks; int cl_server; int cl_protname; } ;


 int HZ ;
 int destroy_wait ;
 int dprintk (char*,int ,int ) ;
 int list_empty (int *) ;
 int rpc_killall_tasks (struct rpc_clnt*) ;
 int rpc_release_client (struct rpc_clnt*) ;
 int wait_event_timeout (int ,int ,int) ;

void rpc_shutdown_client(struct rpc_clnt *clnt)
{
 dprintk("RPC:       shutting down %s client for %s\n",
   clnt->cl_protname, clnt->cl_server);

 while (!list_empty(&clnt->cl_tasks)) {
  rpc_killall_tasks(clnt);
  wait_event_timeout(destroy_wait,
   list_empty(&clnt->cl_tasks), 1*HZ);
 }

 rpc_release_client(clnt);
}
