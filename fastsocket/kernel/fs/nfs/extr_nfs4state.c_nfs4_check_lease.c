
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
struct nfs_client {int cl_lock; int cl_state; TYPE_1__* cl_mvops; } ;
struct nfs4_state_maintenance_ops {int (* renew_lease ) (struct nfs_client*,struct rpc_cred*) ;struct rpc_cred* (* get_state_renewal_cred_locked ) (struct nfs_client*) ;} ;
struct TYPE_2__ {struct nfs4_state_maintenance_ops* state_renewal_ops; } ;


 int NFS4CLNT_LEASE_EXPIRED ;
 int NFS4ERR_EXPIRED ;
 struct rpc_cred* nfs4_get_setclientid_cred (struct nfs_client*) ;
 int nfs4_recovery_handle_error (struct nfs_client*,int) ;
 int put_rpccred (struct rpc_cred*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct rpc_cred* stub1 (struct nfs_client*) ;
 int stub2 (struct nfs_client*,struct rpc_cred*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int nfs4_check_lease(struct nfs_client *clp)
{
 struct rpc_cred *cred;
 const struct nfs4_state_maintenance_ops *ops =
  clp->cl_mvops->state_renewal_ops;
 int status = -NFS4ERR_EXPIRED;


 if (test_bit(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state))
  return 0;
 spin_lock(&clp->cl_lock);
 cred = ops->get_state_renewal_cred_locked(clp);
 spin_unlock(&clp->cl_lock);
 if (cred == ((void*)0)) {
  cred = nfs4_get_setclientid_cred(clp);
  if (cred == ((void*)0))
   goto out;
 }
 status = ops->renew_lease(clp, cred);
 put_rpccred(cred);
out:
 return nfs4_recovery_handle_error(clp, status);
}
