
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct xdr_netobj {int len; int * data; } ;
struct xdr_buf {int len; struct kvec* tail; TYPE_1__* head; } ;
struct svc_rqst {struct xdr_buf rq_res; scalar_t__ rq_auth_data; } ;
struct rpc_gss_wire_cred {int gc_seq; } ;
struct kvec {int iov_len; int * iov_base; } ;
struct gss_svc_data {TYPE_2__* rsci; struct rpc_gss_wire_cred clcred; } ;
typedef int __be32 ;
struct TYPE_4__ {int mechctx; } ;
struct TYPE_3__ {scalar_t__ iov_len; int * iov_base; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int EINVAL ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ RPC_MAX_AUTH_SIZE ;
 int XDR_QUADLEN (int) ;
 scalar_t__ gss_get_mic (int ,struct xdr_buf*,struct xdr_netobj*) ;
 void* htonl (int) ;
 int memset (int *,int ,int) ;
 int round_up_to_quad (int) ;
 int svc_putnl (struct kvec*,int) ;
 int * svcauth_gss_prepare_to_wrap (struct xdr_buf*,struct gss_svc_data*) ;
 scalar_t__ xdr_buf_subsegment (struct xdr_buf*,struct xdr_buf*,int,int) ;

__attribute__((used)) static inline int
svcauth_gss_wrap_resp_integ(struct svc_rqst *rqstp)
{
 struct gss_svc_data *gsd = (struct gss_svc_data *)rqstp->rq_auth_data;
 struct rpc_gss_wire_cred *gc = &gsd->clcred;
 struct xdr_buf *resbuf = &rqstp->rq_res;
 struct xdr_buf integ_buf;
 struct xdr_netobj mic;
 struct kvec *resv;
 __be32 *p;
 int integ_offset, integ_len;
 int stat = -EINVAL;

 p = svcauth_gss_prepare_to_wrap(resbuf, gsd);
 if (p == ((void*)0))
  goto out;
 integ_offset = (u8 *)(p + 1) - (u8 *)resbuf->head[0].iov_base;
 integ_len = resbuf->len - integ_offset;
 BUG_ON(integ_len % 4);
 *p++ = htonl(integ_len);
 *p++ = htonl(gc->gc_seq);
 if (xdr_buf_subsegment(resbuf, &integ_buf, integ_offset,
    integ_len))
  BUG();
 if (resbuf->tail[0].iov_base == ((void*)0)) {
  if (resbuf->head[0].iov_len + RPC_MAX_AUTH_SIZE > PAGE_SIZE)
   goto out_err;
  resbuf->tail[0].iov_base = resbuf->head[0].iov_base
      + resbuf->head[0].iov_len;
  resbuf->tail[0].iov_len = 0;
  resv = &resbuf->tail[0];
 } else {
  resv = &resbuf->tail[0];
 }
 mic.data = (u8 *)resv->iov_base + resv->iov_len + 4;
 if (gss_get_mic(gsd->rsci->mechctx, &integ_buf, &mic))
  goto out_err;
 svc_putnl(resv, mic.len);
 memset(mic.data + mic.len, 0,
   round_up_to_quad(mic.len) - mic.len);
 resv->iov_len += XDR_QUADLEN(mic.len) << 2;

 resbuf->len += XDR_QUADLEN(mic.len) << 2;
 BUG_ON(resv->iov_len > PAGE_SIZE);
out:
 stat = 0;
out_err:
 return stat;
}
