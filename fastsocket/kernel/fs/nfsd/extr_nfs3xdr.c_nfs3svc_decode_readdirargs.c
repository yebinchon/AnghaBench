
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_resused; int * rq_respages; } ;
struct nfsd3_readdirargs {scalar_t__ count; int buffer; int dircount; int * verf; int cookie; int fh; } ;
typedef int __be32 ;


 scalar_t__ PAGE_SIZE ;
 int * decode_fh (int *,int *) ;
 scalar_t__ ntohl (int ) ;
 int page_address (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;
 int * xdr_decode_hyper (int *,int *) ;

int
nfs3svc_decode_readdirargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_readdirargs *args)
{
 if (!(p = decode_fh(p, &args->fh)))
  return 0;
 p = xdr_decode_hyper(p, &args->cookie);
 args->verf = p; p += 2;
 args->dircount = ~0;
 args->count = ntohl(*p++);

 if (args->count > PAGE_SIZE)
  args->count = PAGE_SIZE;

 args->buffer =
  page_address(rqstp->rq_respages[rqstp->rq_resused++]);

 return xdr_argsize_check(rqstp, p);
}
