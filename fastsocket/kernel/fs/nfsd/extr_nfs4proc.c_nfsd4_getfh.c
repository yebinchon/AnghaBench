
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_dentry; } ;
struct nfsd4_compound_state {struct svc_fh current_fh; } ;
typedef int __be32 ;


 int nfs_ok ;
 int nfserr_nofilehandle ;

__attribute__((used)) static __be32
nfsd4_getfh(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
     struct svc_fh **getfh)
{
 if (!cstate->current_fh.fh_dentry)
  return nfserr_nofilehandle;

 *getfh = &cstate->current_fh;
 return nfs_ok;
}
