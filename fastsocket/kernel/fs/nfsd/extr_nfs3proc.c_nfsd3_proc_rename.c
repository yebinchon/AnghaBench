
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_renameres {int tfh; int ffh; } ;
struct nfsd3_renameargs {int tlen; int tname; int flen; int fname; int tfh; int ffh; } ;
typedef int __be32 ;


 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,int ,int ) ;
 int fh_copy (int *,int *) ;
 int nfsd_rename (struct svc_rqst*,int *,int ,int ,int *,int ,int ) ;

__attribute__((used)) static __be32
nfsd3_proc_rename(struct svc_rqst *rqstp, struct nfsd3_renameargs *argp,
       struct nfsd3_renameres *resp)
{
 __be32 nfserr;

 dprintk("nfsd: RENAME(3)   %s %.*s ->\n",
    SVCFH_fmt(&argp->ffh),
    argp->flen,
    argp->fname);
 dprintk("nfsd: -> %s %.*s\n",
    SVCFH_fmt(&argp->tfh),
    argp->tlen,
    argp->tname);

 fh_copy(&resp->ffh, &argp->ffh);
 fh_copy(&resp->tfh, &argp->tfh);
 nfserr = nfsd_rename(rqstp, &resp->ffh, argp->fname, argp->flen,
        &resp->tfh, argp->tname, argp->tlen);
 RETURN_STATUS(nfserr);
}
