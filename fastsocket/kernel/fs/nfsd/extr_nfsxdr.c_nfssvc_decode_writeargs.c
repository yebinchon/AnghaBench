
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int page_len; TYPE_1__* head; } ;
struct svc_rqst {TYPE_3__* rq_vec; int * rq_pages; TYPE_2__ rq_arg; } ;
struct nfsd_writeargs {unsigned int len; int vlen; void* offset; int fh; } ;
typedef int __be32 ;
struct TYPE_6__ {unsigned int iov_len; void* iov_base; } ;
struct TYPE_4__ {void* iov_base; unsigned int iov_len; } ;


 unsigned int NFSSVC_MAXBLKSIZE_V2 ;
 unsigned int PAGE_SIZE ;
 int XDR_QUADLEN (unsigned int) ;
 int * decode_fh (int *,int *) ;
 void* ntohl (int ) ;
 void* page_address (int ) ;

int
nfssvc_decode_writeargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd_writeargs *args)
{
 unsigned int len, hdr, dlen;
 int v;

 if (!(p = decode_fh(p, &args->fh)))
  return 0;

 p++;
 args->offset = ntohl(*p++);
 p++;
 len = args->len = ntohl(*p++);



 if (len > NFSSVC_MAXBLKSIZE_V2)
  return 0;





 hdr = (void*)p - rqstp->rq_arg.head[0].iov_base;
 dlen = rqstp->rq_arg.head[0].iov_len + rqstp->rq_arg.page_len
  - hdr;
 if (dlen < XDR_QUADLEN(len)*4)
  return 0;

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
