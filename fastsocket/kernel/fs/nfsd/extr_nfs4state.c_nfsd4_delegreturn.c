
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct nfsd4_delegreturn {int dr_stateid; } ;
struct TYPE_4__ {TYPE_1__* fh_dentry; } ;
struct nfsd4_compound_state {TYPE_2__ current_fh; } ;
struct nfs4_delegation {int dl_client; int dl_stateid; } ;
struct inode {int dummy; } ;
typedef int stateid_t ;
typedef scalar_t__ __be32 ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int HAS_SESSION ;
 scalar_t__ ONE_STATEID (int *) ;
 scalar_t__ STALE_STATEID (int *) ;
 int S_IFREG ;
 scalar_t__ ZERO_STATEID (int *) ;
 scalar_t__ check_stateid_generation (int *,int *,int) ;
 scalar_t__ fh_verify (struct svc_rqst*,TYPE_2__*,int ,int ) ;
 struct nfs4_delegation* find_delegation_stateid (struct inode*,int *) ;
 int is_delegation_stateid (int *) ;
 int nfs4_lock_state () ;
 int nfs4_unlock_state () ;
 scalar_t__ nfsd4_has_session (struct nfsd4_compound_state*) ;
 scalar_t__ nfserr_bad_stateid ;
 scalar_t__ nfserr_expired ;
 scalar_t__ nfserr_stale_stateid ;
 int renew_client (int ) ;
 int unhash_delegation (struct nfs4_delegation*) ;

__be32
nfsd4_delegreturn(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
    struct nfsd4_delegreturn *dr)
{
 struct nfs4_delegation *dp;
 stateid_t *stateid = &dr->dr_stateid;
 struct inode *inode;
 __be32 status;
 int flags = 0;

 if ((status = fh_verify(rqstp, &cstate->current_fh, S_IFREG, 0)))
  return status;
 inode = cstate->current_fh.fh_dentry->d_inode;

 if (nfsd4_has_session(cstate))
  flags |= HAS_SESSION;
 nfs4_lock_state();
 status = nfserr_bad_stateid;
 if (ZERO_STATEID(stateid) || ONE_STATEID(stateid))
  goto out;
 status = nfserr_stale_stateid;
 if (STALE_STATEID(stateid))
  goto out;
 status = nfserr_bad_stateid;
 if (!is_delegation_stateid(stateid))
  goto out;
 status = nfserr_expired;
 dp = find_delegation_stateid(inode, stateid);
 if (!dp)
  goto out;
 status = check_stateid_generation(stateid, &dp->dl_stateid, flags);
 if (status)
  goto out;
 renew_client(dp->dl_client);

 unhash_delegation(dp);
out:
 nfs4_unlock_state();

 return status;
}
