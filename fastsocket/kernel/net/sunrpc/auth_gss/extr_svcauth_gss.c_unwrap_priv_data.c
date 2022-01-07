
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xdr_buf {int len; TYPE_1__* head; int buflen; } ;
struct svc_rqst {scalar_t__ rq_deferred; scalar_t__ rq_splice_ok; } ;
struct gss_ctx {int dummy; } ;
struct TYPE_2__ {int iov_len; } ;


 int EINVAL ;
 int GSS_S_COMPLETE ;
 int RPCSVC_MAXPAYLOAD ;
 int fix_priv_head (struct xdr_buf*,int) ;
 int gss_unwrap (struct gss_ctx*,int ,struct xdr_buf*) ;
 int svc_getnl (TYPE_1__*) ;
 int total_buf_len (struct xdr_buf*) ;
 int xdr_shift_buf (struct xdr_buf*,int) ;

__attribute__((used)) static int
unwrap_priv_data(struct svc_rqst *rqstp, struct xdr_buf *buf, u32 seq, struct gss_ctx *ctx)
{
 u32 priv_len, maj_stat;
 int pad, saved_len, remaining_len, offset;

 rqstp->rq_splice_ok = 0;

 priv_len = svc_getnl(&buf->head[0]);
 if (rqstp->rq_deferred) {


  goto out_seq;
 }



 remaining_len = total_buf_len(buf);
 if (priv_len > remaining_len)
  return -EINVAL;
 pad = remaining_len - priv_len;
 buf->len -= pad;
 fix_priv_head(buf, pad);


 saved_len = buf->len;
 buf->len = priv_len;
 maj_stat = gss_unwrap(ctx, 0, buf);
 pad = priv_len - buf->len;
 buf->len = saved_len;
 buf->len -= pad;






 offset = buf->head[0].iov_len % 4;
 if (offset) {
  buf->buflen = RPCSVC_MAXPAYLOAD;
  xdr_shift_buf(buf, offset);
  fix_priv_head(buf, pad);
 }
 if (maj_stat != GSS_S_COMPLETE)
  return -EINVAL;
out_seq:
 if (svc_getnl(&buf->head[0]) != seq)
  return -EINVAL;
 return 0;
}
