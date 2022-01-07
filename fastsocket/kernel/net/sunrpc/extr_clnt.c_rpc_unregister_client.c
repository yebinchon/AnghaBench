
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int cl_clients; } ;


 int list_del (int *) ;
 int rpc_client_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void rpc_unregister_client(struct rpc_clnt *clnt)
{
 spin_lock(&rpc_client_lock);
 list_del(&clnt->cl_clients);
 spin_unlock(&rpc_client_lock);
}
