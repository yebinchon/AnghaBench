
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_open {scalar_t__ op_claim_type; TYPE_1__* op_stateowner; int op_share_access; int op_delegate_stateid; } ;
struct nfs4_file {int dummy; } ;
struct nfs4_delegation {int dummy; } ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {int so_confirmed; } ;


 scalar_t__ NFS4_OPEN_CLAIM_DELEGATE_CUR ;
 struct nfs4_delegation* find_delegation_file (struct nfs4_file*,int *) ;
 scalar_t__ nfs4_check_delegmode (struct nfs4_delegation*,int) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfserr_bad_stateid ;
 int share_access_to_flags (int ) ;

__attribute__((used)) static __be32
nfs4_check_deleg(struct nfs4_file *fp, struct nfsd4_open *open,
  struct nfs4_delegation **dp)
{
 int flags;
 __be32 status = nfserr_bad_stateid;

 *dp = find_delegation_file(fp, &open->op_delegate_stateid);
 if (*dp == ((void*)0))
  goto out;
 flags = share_access_to_flags(open->op_share_access);
 status = nfs4_check_delegmode(*dp, flags);
 if (status)
  *dp = ((void*)0);
out:
 if (open->op_claim_type != NFS4_OPEN_CLAIM_DELEGATE_CUR)
  return nfs_ok;
 if (status)
  return status;
 open->op_stateowner->so_confirmed = 1;
 return nfs_ok;
}
