
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int cl_count; int * cl_auth; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int rpc_free_client (struct rpc_clnt*) ;
 int rpcauth_release (int *) ;

__attribute__((used)) static void
rpc_free_auth(struct rpc_clnt *clnt)
{
 if (clnt->cl_auth == ((void*)0)) {
  rpc_free_client(clnt);
  return;
 }






 atomic_inc(&clnt->cl_count);
 rpcauth_release(clnt->cl_auth);
 clnt->cl_auth = ((void*)0);
 if (atomic_dec_and_test(&clnt->cl_count))
  rpc_free_client(clnt);
}
