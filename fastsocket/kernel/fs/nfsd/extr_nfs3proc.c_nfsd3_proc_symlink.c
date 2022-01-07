
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_symlinkargs {int attrs; int tlen; int tname; int flen; int fname; int ffh; } ;
struct nfsd3_diropres {int fh; int dirfh; } ;
typedef int __be32 ;


 int NFS3_FHSIZE ;
 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,int ,int ,int ,int ) ;
 int fh_copy (int *,int *) ;
 int fh_init (int *,int ) ;
 int nfsd_symlink (struct svc_rqst*,int *,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static __be32
nfsd3_proc_symlink(struct svc_rqst *rqstp, struct nfsd3_symlinkargs *argp,
        struct nfsd3_diropres *resp)
{
 __be32 nfserr;

 dprintk("nfsd: SYMLINK(3)  %s %.*s -> %.*s\n",
    SVCFH_fmt(&argp->ffh),
    argp->flen, argp->fname,
    argp->tlen, argp->tname);

 fh_copy(&resp->dirfh, &argp->ffh);
 fh_init(&resp->fh, NFS3_FHSIZE);
 nfserr = nfsd_symlink(rqstp, &resp->dirfh, argp->fname, argp->flen,
         argp->tname, argp->tlen,
         &resp->fh, &argp->attrs);
 RETURN_STATUS(nfserr);
}
