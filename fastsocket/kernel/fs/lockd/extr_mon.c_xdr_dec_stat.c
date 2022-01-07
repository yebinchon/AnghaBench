
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_rcv_buf; } ;
struct nsm_res {int state; } ;
typedef int __be32 ;


 int EIO ;
 int dprintk (char*,int ) ;
 int ntohl (int ) ;
 scalar_t__ unlikely (int ) ;
 int xdr_init_decode (struct xdr_stream*,int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int xdr_dec_stat(struct rpc_rqst *rqstp, __be32 *p,
   struct nsm_res *resp)
{
 struct xdr_stream xdr;

 xdr_init_decode(&xdr, &rqstp->rq_rcv_buf, p);
 p = xdr_inline_decode(&xdr, sizeof(u32));
 if (unlikely(p == ((void*)0)))
  return -EIO;
 resp->state = ntohl(*p);

 dprintk("lockd: xdr_dec_stat state %d\n", resp->state);
 return 0;
}
