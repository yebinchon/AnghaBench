
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd4_verify {int dummy; } ;
struct nfsd4_compound_state {int dummy; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ _nfsd4_verify (struct svc_rqst*,struct nfsd4_compound_state*,struct nfsd4_verify*) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfserr_same ;

__attribute__((used)) static __be32
nfsd4_verify(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
      struct nfsd4_verify *verify)
{
 __be32 status;

 status = _nfsd4_verify(rqstp, cstate, verify);
 return status == nfserr_same ? nfs_ok : status;
}
