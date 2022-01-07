
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct xdr_buf {int len; TYPE_3__* tail; TYPE_1__* head; struct page** pages; } ;
struct svc_rqst {struct xdr_buf rq_res; scalar_t__ rq_auth_data; } ;
struct rpc_gss_wire_cred {int gc_seq; } ;
struct page {int dummy; } ;
struct gss_svc_data {TYPE_2__* rsci; struct rpc_gss_wire_cred clcred; } ;
typedef void* __be32 ;
struct TYPE_6__ {int iov_len; int * iov_base; } ;
struct TYPE_5__ {int mechctx; } ;
struct TYPE_4__ {int iov_len; int * iov_base; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int RPC_MAX_AUTH_SIZE ;
 scalar_t__ gss_wrap (int ,int,struct xdr_buf*,struct page**) ;
 void* htonl (int) ;
 int memmove (int *,int *,int) ;
 int memset (void**,int ,int) ;
 void** svcauth_gss_prepare_to_wrap (struct xdr_buf*,struct gss_svc_data*) ;

__attribute__((used)) static inline int
svcauth_gss_wrap_resp_priv(struct svc_rqst *rqstp)
{
 struct gss_svc_data *gsd = (struct gss_svc_data *)rqstp->rq_auth_data;
 struct rpc_gss_wire_cred *gc = &gsd->clcred;
 struct xdr_buf *resbuf = &rqstp->rq_res;
 struct page **inpages = ((void*)0);
 __be32 *p, *len;
 int offset;
 int pad;

 p = svcauth_gss_prepare_to_wrap(resbuf, gsd);
 if (p == ((void*)0))
  return 0;
 len = p++;
 offset = (u8 *)p - (u8 *)resbuf->head[0].iov_base;
 *p++ = htonl(gc->gc_seq);
 inpages = resbuf->pages;
 if (resbuf->tail[0].iov_base) {
  BUG_ON(resbuf->tail[0].iov_base >= resbuf->head[0].iov_base
       + PAGE_SIZE);
  BUG_ON(resbuf->tail[0].iov_base < resbuf->head[0].iov_base);
  if (resbuf->tail[0].iov_len + resbuf->head[0].iov_len
    + 2 * RPC_MAX_AUTH_SIZE > PAGE_SIZE)
   return -ENOMEM;
  memmove(resbuf->tail[0].iov_base + RPC_MAX_AUTH_SIZE,
   resbuf->tail[0].iov_base,
   resbuf->tail[0].iov_len);
  resbuf->tail[0].iov_base += RPC_MAX_AUTH_SIZE;
 }







 if (resbuf->tail[0].iov_base == ((void*)0)) {
  if (resbuf->head[0].iov_len + 2*RPC_MAX_AUTH_SIZE > PAGE_SIZE)
   return -ENOMEM;
  resbuf->tail[0].iov_base = resbuf->head[0].iov_base
   + resbuf->head[0].iov_len + RPC_MAX_AUTH_SIZE;
  resbuf->tail[0].iov_len = 0;
 }
 if (gss_wrap(gsd->rsci->mechctx, offset, resbuf, inpages))
  return -ENOMEM;
 *len = htonl(resbuf->len - offset);
 pad = 3 - ((resbuf->len - offset - 1)&3);
 p = (__be32 *)(resbuf->tail[0].iov_base + resbuf->tail[0].iov_len);
 memset(p, 0, pad);
 resbuf->tail[0].iov_len += pad;
 resbuf->len += pad;
 return 0;
}
