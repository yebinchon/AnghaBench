
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfsd_symlinkargs {struct svc_fh ffh; int attrs; int tlen; int tname; int flen; int fname; } ;
typedef int __be32 ;


 int NFS_FHSIZE ;
 int SVCFH_fmt (struct svc_fh*) ;
 int dprintk (char*,int ,int ,int ,int ,int ) ;
 int fh_init (struct svc_fh*,int ) ;
 int fh_put (struct svc_fh*) ;
 int nfsd_symlink (struct svc_rqst*,struct svc_fh*,int ,int ,int ,int ,struct svc_fh*,int *) ;

__attribute__((used)) static __be32
nfsd_proc_symlink(struct svc_rqst *rqstp, struct nfsd_symlinkargs *argp,
              void *resp)
{
 struct svc_fh newfh;
 __be32 nfserr;

 dprintk("nfsd: SYMLINK  %s %.*s -> %.*s\n",
  SVCFH_fmt(&argp->ffh), argp->flen, argp->fname,
  argp->tlen, argp->tname);

 fh_init(&newfh, NFS_FHSIZE);



 nfserr = nfsd_symlink(rqstp, &argp->ffh, argp->fname, argp->flen,
       argp->tname, argp->tlen,
        &newfh, &argp->attrs);


 fh_put(&argp->ffh);
 fh_put(&newfh);
 return nfserr;
}
