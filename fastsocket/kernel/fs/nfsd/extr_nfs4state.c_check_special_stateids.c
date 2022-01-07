
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svc_fh ;
typedef int stateid_t ;
typedef int __be32 ;


 int NFS4_SHARE_DENY_READ ;
 int NFS4_SHARE_DENY_WRITE ;
 scalar_t__ ONE_STATEID (int *) ;
 int RD_STATE ;
 int WR_STATE ;
 scalar_t__ locks_in_grace () ;
 int nfs4_share_conflict (int *,int ) ;
 int nfs_ok ;
 int nfserr_grace ;

__attribute__((used)) static inline __be32
check_special_stateids(svc_fh *current_fh, stateid_t *stateid, int flags)
{
 if (ONE_STATEID(stateid) && (flags & RD_STATE))
  return nfs_ok;
 else if (locks_in_grace()) {


  return nfserr_grace;
 } else if (flags & WR_STATE)
  return nfs4_share_conflict(current_fh,
    NFS4_SHARE_DENY_WRITE);
 else
  return nfs4_share_conflict(current_fh,
    NFS4_SHARE_DENY_READ);
}
