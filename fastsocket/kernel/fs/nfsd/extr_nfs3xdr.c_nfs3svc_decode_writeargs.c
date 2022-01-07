
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {unsigned int page_len; TYPE_1__* head; } ;
struct svc_rqst {TYPE_3__* rq_vec; int * rq_pages; TYPE_2__ rq_arg; } ;
struct nfsd3_writeargs {scalar_t__ count; unsigned int len; unsigned int vlen; void* stable; int offset; int fh; } ;
typedef int __be32 ;
struct TYPE_6__ {unsigned int iov_len; void* iov_base; } ;
struct TYPE_4__ {void* iov_base; unsigned int iov_len; } ;


 unsigned int PAGE_SIZE ;
 int XDR_QUADLEN (unsigned int) ;
 int * decode_fh (int *,int *) ;
 void* ntohl (int ) ;
 void* page_address (int ) ;
 scalar_t__ svc_max_payload (struct svc_rqst*) ;
 int * xdr_decode_hyper (int *,int *) ;

int
nfs3svc_decode_writeargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_writeargs *args)
{
 unsigned int len, v, hdr, dlen;
 u32 max_blocksize = svc_max_payload(rqstp);

 if (!(p = decode_fh(p, &args->fh)))
  return 0;
 p = xdr_decode_hyper(p, &args->offset);

 args->count = ntohl(*p++);
 args->stable = ntohl(*p++);
 len = args->len = ntohl(*p++);



 if (args->count != args->len)
  return 0;





 hdr = (void*)p - rqstp->rq_arg.head[0].iov_base;
 dlen = rqstp->rq_arg.head[0].iov_len + rqstp->rq_arg.page_len
  - hdr;
 if (dlen < XDR_QUADLEN(len)*4)
  return 0;

 if (args->count > max_blocksize) {
  args->count = max_blocksize;
  len = args->len = max_blocksize;
 }
 rqstp->rq_vec[0].iov_base = (void*)p;
 rqstp->rq_vec[0].iov_len = rqstp->rq_arg.head[0].iov_len - hdr;
 v = 0;
 while (len > rqstp->rq_vec[v].iov_len) {
  len -= rqstp->rq_vec[v].iov_len;
  v++;
  rqstp->rq_vec[v].iov_base = page_address(rqstp->rq_pages[v]);
  rqstp->rq_vec[v].iov_len = PAGE_SIZE;
 }
 rqstp->rq_vec[v].iov_len = len;
 args->vlen = v + 1;
 return 1;
}
