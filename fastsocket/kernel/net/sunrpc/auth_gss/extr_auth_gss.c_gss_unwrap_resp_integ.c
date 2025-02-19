
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct xdr_netobj {int dummy; } ;
struct xdr_buf {int len; TYPE_1__* head; } ;
struct rpc_rqst {scalar_t__ rq_seqno; struct xdr_buf rq_rcv_buf; } ;
struct rpc_cred {int cr_flags; } ;
struct gss_cl_ctx {int gc_gss_ctx; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ iov_base; } ;


 int EIO ;
 int GSS_S_COMPLETE ;
 int GSS_S_CONTEXT_EXPIRED ;
 int RPCAUTH_CRED_UPTODATE ;
 int clear_bit (int ,int *) ;
 int gss_verify_mic (int ,struct xdr_buf*,struct xdr_netobj*) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ xdr_buf_read_netobj (struct xdr_buf*,struct xdr_netobj*,int) ;
 scalar_t__ xdr_buf_subsegment (struct xdr_buf*,struct xdr_buf*,int,int) ;

__attribute__((used)) static inline int
gss_unwrap_resp_integ(struct rpc_cred *cred, struct gss_cl_ctx *ctx,
  struct rpc_rqst *rqstp, __be32 **p)
{
 struct xdr_buf *rcv_buf = &rqstp->rq_rcv_buf;
 struct xdr_buf integ_buf;
 struct xdr_netobj mic;
 u32 data_offset, mic_offset;
 u32 integ_len;
 u32 maj_stat;
 int status = -EIO;

 integ_len = ntohl(*(*p)++);
 if (integ_len & 3)
  return status;
 data_offset = (u8 *)(*p) - (u8 *)rcv_buf->head[0].iov_base;
 mic_offset = integ_len + data_offset;
 if (mic_offset > rcv_buf->len)
  return status;
 if (ntohl(*(*p)++) != rqstp->rq_seqno)
  return status;

 if (xdr_buf_subsegment(rcv_buf, &integ_buf, data_offset,
    mic_offset - data_offset))
  return status;

 if (xdr_buf_read_netobj(rcv_buf, &mic, mic_offset))
  return status;

 maj_stat = gss_verify_mic(ctx->gc_gss_ctx, &integ_buf, &mic);
 if (maj_stat == GSS_S_CONTEXT_EXPIRED)
  clear_bit(RPCAUTH_CRED_UPTODATE, &cred->cr_flags);
 if (maj_stat != GSS_S_COMPLETE)
  return status;
 return 0;
}
