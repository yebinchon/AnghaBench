
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_diropres {int fh; int dirfh; } ;
struct nfsd3_diropargs {int len; int name; int fh; } ;
typedef int __be32 ;


 int NFS3_FHSIZE ;
 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,int ,int ) ;
 int fh_copy (int *,int *) ;
 int fh_init (int *,int ) ;
 int nfsd_lookup (struct svc_rqst*,int *,int ,int ,int *) ;

__attribute__((used)) static __be32
nfsd3_proc_lookup(struct svc_rqst *rqstp, struct nfsd3_diropargs *argp,
       struct nfsd3_diropres *resp)
{
 __be32 nfserr;

 dprintk("nfsd: LOOKUP(3)   %s %.*s\n",
    SVCFH_fmt(&argp->fh),
    argp->len,
    argp->name);

 fh_copy(&resp->dirfh, &argp->fh);
 fh_init(&resp->fh, NFS3_FHSIZE);

 nfserr = nfsd_lookup(rqstp, &resp->dirfh,
        argp->name,
        argp->len,
        &resp->fh);
 RETURN_STATUS(nfserr);
}
