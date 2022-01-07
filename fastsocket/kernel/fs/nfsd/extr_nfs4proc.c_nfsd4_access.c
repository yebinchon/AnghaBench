
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int current_fh; } ;
struct nfsd4_access {int ac_req_access; int ac_resp_access; int ac_supported; } ;
typedef int __be32 ;


 int NFS3_ACCESS_FULL ;
 int nfsd_access (struct svc_rqst*,int *,int*,int *) ;
 int nfserr_inval ;

__attribute__((used)) static __be32
nfsd4_access(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
      struct nfsd4_access *access)
{
 if (access->ac_req_access & ~NFS3_ACCESS_FULL)
  return nfserr_inval;

 access->ac_resp_access = access->ac_req_access;
 return nfsd_access(rqstp, &cstate->current_fh, &access->ac_resp_access,
      &access->ac_supported);
}
