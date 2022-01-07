
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {TYPE_1__* rq_vec; int * rq_respages; int rq_resused; } ;
struct nfsd_readargs {unsigned int count; int vlen; void* offset; int fh; } ;
typedef int __be32 ;
struct TYPE_2__ {unsigned int iov_len; int iov_base; } ;


 unsigned int NFSSVC_MAXBLKSIZE_V2 ;
 unsigned int PAGE_SIZE ;
 int * decode_fh (int *,int *) ;
 void* ntohl (int ) ;
 int page_address (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nfssvc_decode_readargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd_readargs *args)
{
 unsigned int len;
 int v,pn;
 if (!(p = decode_fh(p, &args->fh)))
  return 0;

 args->offset = ntohl(*p++);
 len = args->count = ntohl(*p++);
 p++;

 if (len > NFSSVC_MAXBLKSIZE_V2)
  len = NFSSVC_MAXBLKSIZE_V2;




 v=0;
 while (len > 0) {
  pn = rqstp->rq_resused++;
  rqstp->rq_vec[v].iov_base = page_address(rqstp->rq_respages[pn]);
  rqstp->rq_vec[v].iov_len = len < PAGE_SIZE?len:PAGE_SIZE;
  len -= rqstp->rq_vec[v].iov_len;
  v++;
 }
 args->vlen = v;
 return xdr_argsize_check(rqstp, p);
}
