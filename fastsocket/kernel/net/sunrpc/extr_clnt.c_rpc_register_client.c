
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int cl_clients; } ;


 int all_clients ;
 int list_add (int *,int *) ;
 int rpc_client_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void rpc_register_client(struct rpc_clnt *clnt)
{
 spin_lock(&rpc_client_lock);
 list_add(&clnt->cl_clients, &all_clients);
 spin_unlock(&rpc_client_lock);
}
