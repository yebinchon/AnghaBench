
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_netobj {int dummy; } ;
struct xdr_buf {int dummy; } ;
struct krb5_ctx {int enctype; } ;
struct gss_ctx {struct krb5_ctx* internal_ctx_id; } ;


 int BUG () ;





 int gss_verify_mic_v1 (struct krb5_ctx*,struct xdr_buf*,struct xdr_netobj*) ;
 int gss_verify_mic_v2 (struct krb5_ctx*,struct xdr_buf*,struct xdr_netobj*) ;

u32
gss_verify_mic_kerberos(struct gss_ctx *gss_ctx,
   struct xdr_buf *message_buffer,
   struct xdr_netobj *read_token)
{
 struct krb5_ctx *ctx = gss_ctx->internal_ctx_id;

 switch (ctx->enctype) {
 default:
  BUG();
 case 128:
 case 129:
 case 130:
  return gss_verify_mic_v1(ctx, message_buffer, read_token);
 case 132:
 case 131:
  return gss_verify_mic_v2(ctx, message_buffer, read_token);
 }
}
