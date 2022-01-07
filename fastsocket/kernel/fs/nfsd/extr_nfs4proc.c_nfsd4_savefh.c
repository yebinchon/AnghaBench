
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int fh_dentry; } ;
struct nfsd4_compound_state {TYPE_1__ current_fh; int save_fh; } ;
typedef int __be32 ;


 int fh_dup2 (int *,TYPE_1__*) ;
 int nfs_ok ;
 int nfserr_nofilehandle ;

__attribute__((used)) static __be32
nfsd4_savefh(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
      void *arg)
{
 if (!cstate->current_fh.fh_dentry)
  return nfserr_nofilehandle;

 fh_dup2(&cstate->save_fh, &cstate->current_fh);
 return nfs_ok;
}
