
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct svc_export {int dummy; } ;
struct nfsd4_secinfo {struct svc_export* si_exp; int si_namelen; int si_name; } ;
struct nfsd4_compound_state {int current_fh; } ;
struct dentry {int * d_inode; } ;
typedef scalar_t__ __be32 ;


 int NFS4_FHSIZE ;
 int dput (struct dentry*) ;
 int exp_put (struct svc_export*) ;
 int fh_init (struct svc_fh*,int ) ;
 scalar_t__ nfsd_lookup_dentry (struct svc_rqst*,int *,int ,int ,struct svc_export**,struct dentry**) ;
 scalar_t__ nfserr_noent ;

__attribute__((used)) static __be32
nfsd4_secinfo(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
       struct nfsd4_secinfo *secinfo)
{
 struct svc_fh resfh;
 struct svc_export *exp;
 struct dentry *dentry;
 __be32 err;

 fh_init(&resfh, NFS4_FHSIZE);
 err = nfsd_lookup_dentry(rqstp, &cstate->current_fh,
        secinfo->si_name, secinfo->si_namelen,
        &exp, &dentry);
 if (err)
  return err;
 if (dentry->d_inode == ((void*)0)) {
  exp_put(exp);
  err = nfserr_noent;
 } else
  secinfo->si_exp = exp;
 dput(dentry);
 return err;
}
