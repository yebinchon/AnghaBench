
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_resused; int * rq_respages; } ;
struct nfsd_readdirargs {scalar_t__ count; int buffer; void* cookie; int fh; } ;
typedef int __be32 ;


 scalar_t__ PAGE_SIZE ;
 int * decode_fh (int *,int *) ;
 void* ntohl (int ) ;
 int page_address (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nfssvc_decode_readdirargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd_readdirargs *args)
{
 if (!(p = decode_fh(p, &args->fh)))
  return 0;
 args->cookie = ntohl(*p++);
 args->count = ntohl(*p++);
 if (args->count > PAGE_SIZE)
  args->count = PAGE_SIZE;

 args->buffer = page_address(rqstp->rq_respages[rqstp->rq_resused++]);

 return xdr_argsize_check(rqstp, p);
}
