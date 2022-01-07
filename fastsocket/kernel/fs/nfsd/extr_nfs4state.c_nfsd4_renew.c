
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_client {int cl_cb_set; int cl_delegations; } ;
struct TYPE_5__ {int cl_id; int cl_boot; } ;
typedef TYPE_1__ clientid_t ;
typedef int __be32 ;


 scalar_t__ STALE_CLIENTID (TYPE_1__*) ;
 int atomic_read (int *) ;
 int dprintk (char*,...) ;
 struct nfs4_client* find_confirmed_client (TYPE_1__*) ;
 int list_empty (int *) ;
 int nfs4_lock_state () ;
 int nfs4_unlock_state () ;
 int nfs_ok ;
 int nfserr_cb_path_down ;
 int nfserr_expired ;
 int nfserr_stale_clientid ;
 int renew_client (struct nfs4_client*) ;

__be32
nfsd4_renew(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
     clientid_t *clid)
{
 struct nfs4_client *clp;
 __be32 status;

 nfs4_lock_state();
 dprintk("process_renew(%08x/%08x): starting\n",
   clid->cl_boot, clid->cl_id);
 status = nfserr_stale_clientid;
 if (STALE_CLIENTID(clid))
  goto out;
 clp = find_confirmed_client(clid);
 status = nfserr_expired;
 if (clp == ((void*)0)) {

  dprintk("nfsd4_renew: clientid not found!\n");
  goto out;
 }
 renew_client(clp);
 status = nfserr_cb_path_down;
 if (!list_empty(&clp->cl_delegations)
   && !atomic_read(&clp->cl_cb_set))
  goto out;
 status = nfs_ok;
out:
 nfs4_unlock_state();
 return status;
}
