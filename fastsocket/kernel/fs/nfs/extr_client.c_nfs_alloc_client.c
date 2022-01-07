
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int dummy; } ;
struct nfs_client_initdata {size_t minorversion; int proto; scalar_t__ hostname; int addrlen; int addr; int rpc_ops; } ;
struct nfs_client {int cl_state; size_t cl_minorversion; struct rpc_cred* cl_machine_cred; int cl_mvops; int cl_boot_time; int cl_rpcwaitq; int cl_renewd; int cl_lock; int cl_proto; struct nfs_client* cl_rpcclient; int cl_superblocks; int cl_hostname; int cl_addrlen; int cl_addr; int cl_cons_state; int cl_count; int rpc_ops; } ;


 int CURRENT_TIME ;
 int EINVAL ;
 int ENOMEM ;
 struct nfs_client* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int IS_ERR (struct rpc_cred*) ;
 int NFS4CLNT_LEASE_EXPIRED ;
 int NFS_CS_INITING ;
 int atomic_set (int *,int) ;
 int kfree (struct nfs_client*) ;
 int kstrdup (scalar_t__,int ) ;
 struct nfs_client* kzalloc (int,int ) ;
 int memcpy (int *,int ,int ) ;
 int nfs4_renew_state ;
 int nfs_fscache_get_client_cookie (struct nfs_client*) ;
 int nfs_get_cb_ident_idr (struct nfs_client*,size_t) ;
 int * nfs_v4_minor_ops ;
 int rpc_init_wait_queue (int *,char*) ;
 struct rpc_cred* rpc_lookup_machine_cred () ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct nfs_client *nfs_alloc_client(const struct nfs_client_initdata *cl_init)
{
 struct nfs_client *clp;
 struct rpc_cred *cred;
 int err = -ENOMEM;

 if ((clp = kzalloc(sizeof(*clp), GFP_KERNEL)) == ((void*)0))
  goto error_0;

 clp->rpc_ops = cl_init->rpc_ops;

 atomic_set(&clp->cl_count, 1);
 clp->cl_cons_state = NFS_CS_INITING;

 memcpy(&clp->cl_addr, cl_init->addr, cl_init->addrlen);
 clp->cl_addrlen = cl_init->addrlen;

 if (cl_init->hostname) {
  err = -ENOMEM;
  clp->cl_hostname = kstrdup(cl_init->hostname, GFP_KERNEL);
  if (!clp->cl_hostname)
   goto error_cleanup;
 }

 INIT_LIST_HEAD(&clp->cl_superblocks);
 clp->cl_rpcclient = ERR_PTR(-EINVAL);

 clp->cl_proto = cl_init->proto;
 cred = rpc_lookup_machine_cred();
 if (!IS_ERR(cred))
  clp->cl_machine_cred = cred;
 nfs_fscache_get_client_cookie(clp);

 return clp;

error_cleanup:
 kfree(clp);
error_0:
 return ERR_PTR(err);
}
