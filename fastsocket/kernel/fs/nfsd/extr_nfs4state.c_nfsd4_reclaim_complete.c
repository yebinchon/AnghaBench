
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct nfsd4_reclaim_complete {scalar_t__ rca_one_fs; } ;
struct TYPE_3__ {int fh_dentry; } ;
struct nfsd4_compound_state {TYPE_2__* session; TYPE_1__ current_fh; } ;
typedef int __be32 ;
struct TYPE_4__ {int se_client; } ;


 scalar_t__ is_client_expired (int ) ;
 int nfs4_lock_state () ;
 int nfs4_unlock_state () ;
 int nfs_ok ;
 int nfsd4_create_clid_dir (int ) ;
 int nfserr_nofilehandle ;
 int nfserr_stale_clientid ;

__be32
nfsd4_reclaim_complete(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate, struct nfsd4_reclaim_complete *rc)
{
 if (rc->rca_one_fs) {
  if (!cstate->current_fh.fh_dentry)
   return nfserr_nofilehandle;




   return nfs_ok;
 }
 nfs4_lock_state();
 if (is_client_expired(cstate->session->se_client)) {
  nfs4_unlock_state();







  return nfserr_stale_clientid;
 }
 nfsd4_create_clid_dir(cstate->session->se_client);
 nfs4_unlock_state();
 return nfs_ok;
}
