
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_vec; } ;
struct nfsd3_writeres {unsigned long count; scalar_t__ committed; int fh; } ;
struct nfsd3_writeargs {unsigned long len; int vlen; scalar_t__ offset; scalar_t__ stable; int fh; } ;
typedef int __be32 ;


 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,unsigned long,unsigned long,char*) ;
 int fh_copy (int *,int *) ;
 int nfsd_write (struct svc_rqst*,int *,int *,scalar_t__,int ,int ,unsigned long*,scalar_t__*) ;

__attribute__((used)) static __be32
nfsd3_proc_write(struct svc_rqst *rqstp, struct nfsd3_writeargs *argp,
      struct nfsd3_writeres *resp)
{
 __be32 nfserr;
 unsigned long cnt = argp->len;

 dprintk("nfsd: WRITE(3)    %s %d bytes at %ld%s\n",
    SVCFH_fmt(&argp->fh),
    argp->len,
    (unsigned long) argp->offset,
    argp->stable? " stable" : "");

 fh_copy(&resp->fh, &argp->fh);
 resp->committed = argp->stable;
 nfserr = nfsd_write(rqstp, &resp->fh, ((void*)0),
       argp->offset,
       rqstp->rq_vec, argp->vlen,
       &cnt,
       &resp->committed);
 resp->count = cnt;
 RETURN_STATUS(nfserr);
}
