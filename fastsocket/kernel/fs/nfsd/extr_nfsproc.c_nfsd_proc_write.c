
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_vec; } ;
struct nfsd_writeargs {unsigned long len; int vlen; int offset; int fh; } ;
struct nfsd_attrstat {int fh; } ;
typedef int __be32 ;


 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,unsigned long,int ) ;
 int fh_copy (int *,int *) ;
 int nfsd_return_attrs (int ,struct nfsd_attrstat*) ;
 int nfsd_write (struct svc_rqst*,int ,int *,int ,int ,int ,unsigned long*,int*) ;

__attribute__((used)) static __be32
nfsd_proc_write(struct svc_rqst *rqstp, struct nfsd_writeargs *argp,
     struct nfsd_attrstat *resp)
{
 __be32 nfserr;
 int stable = 1;
 unsigned long cnt = argp->len;

 dprintk("nfsd: WRITE    %s %d bytes at %d\n",
  SVCFH_fmt(&argp->fh),
  argp->len, argp->offset);

 nfserr = nfsd_write(rqstp, fh_copy(&resp->fh, &argp->fh), ((void*)0),
       argp->offset,
       rqstp->rq_vec, argp->vlen,
              &cnt,
       &stable);
 return nfsd_return_attrs(nfserr, resp);
}
