
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int dummy; } ;
struct nfs_client {int cl_lock; struct rpc_cred* cl_machine_cred; } ;


 int put_rpccred (struct rpc_cred*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs4_clear_machine_cred(struct nfs_client *clp)
{
 struct rpc_cred *cred;

 spin_lock(&clp->cl_lock);
 cred = clp->cl_machine_cred;
 clp->cl_machine_cred = ((void*)0);
 spin_unlock(&clp->cl_lock);
 if (cred != ((void*)0))
  put_rpccred(cred);
}
