
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int cl_count; int cl_tasks; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int destroy_wait ;
 int dprintk (char*,struct rpc_clnt*) ;
 scalar_t__ list_empty (int *) ;
 int rpc_free_auth (struct rpc_clnt*) ;
 int wake_up (int *) ;

void
rpc_release_client(struct rpc_clnt *clnt)
{
 dprintk("RPC:       rpc_release_client(%p)\n", clnt);

 if (list_empty(&clnt->cl_tasks))
  wake_up(&destroy_wait);
 if (atomic_dec_and_test(&clnt->cl_count))
  rpc_free_auth(clnt);
}
