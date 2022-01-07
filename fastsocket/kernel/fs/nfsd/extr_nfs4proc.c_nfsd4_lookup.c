
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd4_lookup {int lo_len; int lo_name; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef int __be32 ;


 int nfsd_lookup (struct svc_rqst*,int *,int ,int ,int *) ;

__attribute__((used)) static __be32
nfsd4_lookup(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
      struct nfsd4_lookup *lookup)
{
 return nfsd_lookup(rqstp, &cstate->current_fh,
      lookup->lo_name, lookup->lo_len,
      &cstate->current_fh);
}
