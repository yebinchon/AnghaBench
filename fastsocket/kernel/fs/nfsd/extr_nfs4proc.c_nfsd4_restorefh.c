
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int fh_dentry; } ;
struct nfsd4_compound_state {TYPE_1__ save_fh; int current_fh; } ;
typedef int __be32 ;


 int fh_dup2 (int *,TYPE_1__*) ;
 int nfs_ok ;
 int nfserr_restorefh ;

__attribute__((used)) static __be32
nfsd4_restorefh(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
  void *arg)
{
 if (!cstate->save_fh.fh_dentry)
  return nfserr_restorefh;

 fh_dup2(&cstate->current_fh, &cstate->save_fh);
 return nfs_ok;
}
