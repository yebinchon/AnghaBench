
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct svc_rqst {TYPE_1__* rq_vec; int * rq_respages; int rq_resused; } ;
struct nfsd3_readargs {unsigned int count; int vlen; int offset; int fh; } ;
typedef int __be32 ;
struct TYPE_2__ {unsigned int iov_len; int iov_base; } ;


 unsigned int PAGE_SIZE ;
 int * decode_fh (int *,int *) ;
 unsigned int ntohl (int ) ;
 int page_address (int ) ;
 unsigned int svc_max_payload (struct svc_rqst*) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;
 int * xdr_decode_hyper (int *,int *) ;

int
nfs3svc_decode_readargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_readargs *args)
{
 unsigned int len;
 int v,pn;
 u32 max_blocksize = svc_max_payload(rqstp);

 if (!(p = decode_fh(p, &args->fh)))
  return 0;
 p = xdr_decode_hyper(p, &args->offset);

 len = args->count = ntohl(*p++);

 if (len > max_blocksize)
  len = max_blocksize;


 v=0;
 while (len > 0) {
  pn = rqstp->rq_resused++;
  rqstp->rq_vec[v].iov_base = page_address(rqstp->rq_respages[pn]);
  rqstp->rq_vec[v].iov_len = len < PAGE_SIZE? len : PAGE_SIZE;
  len -= rqstp->rq_vec[v].iov_len;
  v++;
 }
 args->vlen = v;
 return xdr_argsize_check(rqstp, p);
}
