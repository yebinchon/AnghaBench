
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_buf {int dummy; } ;
struct krb5_ctx {int enctype; } ;
struct gss_ctx {struct krb5_ctx* internal_ctx_id; } ;


 int BUG () ;





 int gss_unwrap_kerberos_v1 (struct krb5_ctx*,int,struct xdr_buf*) ;
 int gss_unwrap_kerberos_v2 (struct krb5_ctx*,int,struct xdr_buf*) ;

u32
gss_unwrap_kerberos(struct gss_ctx *gctx, int offset, struct xdr_buf *buf)
{
 struct krb5_ctx *kctx = gctx->internal_ctx_id;

 switch (kctx->enctype) {
 default:
  BUG();
 case 128:
 case 129:
 case 130:
  return gss_unwrap_kerberos_v1(kctx, offset, buf);
 case 132:
 case 131:
  return gss_unwrap_kerberos_v2(kctx, offset, buf);
 }
}
