
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {struct nfs_client* cl_hostname; int * cl_machine_cred; int cl_rpcclient; TYPE_1__* rpc_ops; } ;
struct TYPE_2__ {int version; } ;


 int IS_ERR (int ) ;
 int dprintk (char*,...) ;
 int kfree (struct nfs_client*) ;
 int nfs4_shutdown_client (struct nfs_client*) ;
 int nfs_fscache_release_client_cookie (struct nfs_client*) ;
 int put_rpccred (int *) ;
 int rpc_shutdown_client (int ) ;

__attribute__((used)) static void nfs_free_client(struct nfs_client *clp)
{
 dprintk("--> nfs_free_client(%u)\n", clp->rpc_ops->version);

 nfs4_shutdown_client(clp);

 nfs_fscache_release_client_cookie(clp);


 if (!IS_ERR(clp->cl_rpcclient))
  rpc_shutdown_client(clp->cl_rpcclient);

 if (clp->cl_machine_cred != ((void*)0))
  put_rpccred(clp->cl_machine_cred);

 kfree(clp->cl_hostname);
 kfree(clp);

 dprintk("<-- nfs_free_client()\n");
}
