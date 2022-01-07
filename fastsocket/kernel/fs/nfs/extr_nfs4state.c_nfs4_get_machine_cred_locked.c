
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int dummy; } ;
struct nfs_client {int * cl_machine_cred; } ;


 struct rpc_cred* get_rpccred (int *) ;

struct rpc_cred *nfs4_get_machine_cred_locked(struct nfs_client *clp)
{
 struct rpc_cred *cred = ((void*)0);

 if (clp->cl_machine_cred != ((void*)0))
  cred = get_rpccred(clp->cl_machine_cred);
 return cred;
}
