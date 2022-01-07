
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int * rq_respages; int rq_resused; } ;
struct nfsd3_readdirargs {int count; int buffer; void* dircount; int * verf; int cookie; int fh; } ;
typedef int __be32 ;


 scalar_t__ PAGE_SIZE ;
 int * decode_fh (int *,int *) ;
 void* ntohl (int ) ;
 int page_address (int ) ;
 int svc_max_payload (struct svc_rqst*) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;
 int * xdr_decode_hyper (int *,int *) ;

int
nfs3svc_decode_readdirplusargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_readdirargs *args)
{
 int len, pn;
 u32 max_blocksize = svc_max_payload(rqstp);

 if (!(p = decode_fh(p, &args->fh)))
  return 0;
 p = xdr_decode_hyper(p, &args->cookie);
 args->verf = p; p += 2;
 args->dircount = ntohl(*p++);
 args->count = ntohl(*p++);

 len = (args->count > max_blocksize) ? max_blocksize :
        args->count;
 args->count = len;

 while (len > 0) {
  pn = rqstp->rq_resused++;
  if (!args->buffer)
   args->buffer = page_address(rqstp->rq_respages[pn]);
  len -= PAGE_SIZE;
 }

 return xdr_argsize_check(rqstp, p);
}
