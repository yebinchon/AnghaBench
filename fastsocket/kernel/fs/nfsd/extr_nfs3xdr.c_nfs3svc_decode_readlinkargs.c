
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_resused; int * rq_respages; } ;
struct nfsd3_readlinkargs {int buffer; int fh; } ;
typedef int __be32 ;


 int * decode_fh (int *,int *) ;
 int page_address (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nfs3svc_decode_readlinkargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_readlinkargs *args)
{
 if (!(p = decode_fh(p, &args->fh)))
  return 0;
 args->buffer =
  page_address(rqstp->rq_respages[rqstp->rq_resused++]);

 return xdr_argsize_check(rqstp, p);
}
