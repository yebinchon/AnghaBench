
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_timeout {int dummy; } ;
struct nfs_client {scalar_t__ cl_cons_state; } ;
typedef int rpc_authflavor_t ;


 scalar_t__ NFS_CS_READY ;
 int RPC_AUTH_UNIX ;
 int dprintk (char*,...) ;
 int nfs_create_rpc_client (struct nfs_client*,struct rpc_timeout const*,int ,int ,int) ;
 int nfs_mark_client_ready (struct nfs_client*,int) ;

int nfs_init_client(struct nfs_client *clp, const struct rpc_timeout *timeparms,
      const char *ip_addr, rpc_authflavor_t authflavour,
      int noresvport)
{
 int error;

 if (clp->cl_cons_state == NFS_CS_READY) {

  dprintk("<-- nfs_init_client() = 0 [already %p]\n", clp);
  return 0;
 }





 error = nfs_create_rpc_client(clp, timeparms, RPC_AUTH_UNIX,
          0, noresvport);
 if (error < 0)
  goto error;
 nfs_mark_client_ready(clp, NFS_CS_READY);
 return 0;

error:
 nfs_mark_client_ready(clp, error);
 dprintk("<-- nfs_init_client() = xerror %d\n", error);
 return error;
}
