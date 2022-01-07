
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_fh {TYPE_1__* fh_dentry; } ;
struct nfsd4_compound_state {struct svc_fh current_fh; } ;
struct nfs4_stateid {int st_file; TYPE_2__* st_stateowner; int st_stateid; } ;
struct nfs4_delegation {int dl_file; int dl_client; int dl_stateid; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int stateid_t ;
typedef scalar_t__ __be32 ;
struct TYPE_4__ {int so_client; int so_confirmed; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int BUG_ON (int) ;
 int HAS_SESSION ;
 scalar_t__ ONE_STATEID (int *) ;
 int RD_STATE ;
 scalar_t__ STALE_STATEID (int *) ;
 scalar_t__ ZERO_STATEID (int *) ;
 scalar_t__ check_special_stateids (struct svc_fh*,int *,int) ;
 scalar_t__ check_stateid_generation (int *,int *,int) ;
 struct nfs4_delegation* find_delegation_stateid (struct inode*,int *) ;
 struct file* find_readable_file (int ) ;
 struct nfs4_stateid* find_stateid (int *,int) ;
 struct file* find_writeable_file (int ) ;
 scalar_t__ grace_disallows_io (struct inode*) ;
 scalar_t__ is_delegation_stateid (int *) ;
 scalar_t__ nfs4_check_delegmode (struct nfs4_delegation*,int) ;
 scalar_t__ nfs4_check_fh (struct svc_fh*,struct nfs4_stateid*) ;
 scalar_t__ nfs4_check_openmode (struct nfs4_stateid*,int) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_has_session (struct nfsd4_compound_state*) ;
 scalar_t__ nfserr_bad_stateid ;
 scalar_t__ nfserr_expired ;
 scalar_t__ nfserr_grace ;
 scalar_t__ nfserr_stale_stateid ;
 int renew_client (int ) ;

__be32
nfs4_preprocess_stateid_op(struct nfsd4_compound_state *cstate,
      stateid_t *stateid, int flags, struct file **filpp)
{
 struct nfs4_stateid *stp = ((void*)0);
 struct nfs4_delegation *dp = ((void*)0);
 struct svc_fh *current_fh = &cstate->current_fh;
 struct inode *ino = current_fh->fh_dentry->d_inode;
 __be32 status;

 if (filpp)
  *filpp = ((void*)0);

 if (grace_disallows_io(ino))
  return nfserr_grace;

 if (nfsd4_has_session(cstate))
  flags |= HAS_SESSION;

 if (ZERO_STATEID(stateid) || ONE_STATEID(stateid))
  return check_special_stateids(current_fh, stateid, flags);

 status = nfserr_stale_stateid;
 if (STALE_STATEID(stateid))
  goto out;





 status = nfserr_expired;
 if (is_delegation_stateid(stateid)) {
  dp = find_delegation_stateid(ino, stateid);
  if (!dp)
   goto out;
  status = check_stateid_generation(stateid, &dp->dl_stateid,
        flags);
  if (status)
   goto out;
  status = nfs4_check_delegmode(dp, flags);
  if (status)
   goto out;
  renew_client(dp->dl_client);
  if (filpp)
   *filpp = find_readable_file(dp->dl_file);
  BUG_ON(!*filpp);
 } else {
  stp = find_stateid(stateid, flags);
  if (!stp)
   goto out;
  status = nfserr_bad_stateid;
  if (nfs4_check_fh(current_fh, stp))
   goto out;
  if (!stp->st_stateowner->so_confirmed)
   goto out;
  status = check_stateid_generation(stateid, &stp->st_stateid,
        flags);
  if (status)
   goto out;
  status = nfs4_check_openmode(stp, flags);
  if (status)
   goto out;
  renew_client(stp->st_stateowner->so_client);
  if (filpp) {
   if (flags & RD_STATE)
    *filpp = find_readable_file(stp->st_file);
   else
    *filpp = find_writeable_file(stp->st_file);
  }
 }
 status = nfs_ok;
out:
 return status;
}
