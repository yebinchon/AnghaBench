
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_buf {int dummy; } ;
struct page {int dummy; } ;
struct krb5_ctx {int enctype; } ;
struct gss_ctx {struct krb5_ctx* internal_ctx_id; } ;


 int BUG () ;





 int gss_wrap_kerberos_v1 (struct krb5_ctx*,int,struct xdr_buf*,struct page**) ;
 int gss_wrap_kerberos_v2 (struct krb5_ctx*,int,struct xdr_buf*,struct page**) ;

u32
gss_wrap_kerberos(struct gss_ctx *gctx, int offset,
    struct xdr_buf *buf, struct page **pages)
{
 struct krb5_ctx *kctx = gctx->internal_ctx_id;

 switch (kctx->enctype) {
 default:
  BUG();
 case 128:
 case 129:
 case 130:
  return gss_wrap_kerberos_v1(kctx, offset, buf, pages);
 case 132:
 case 131:
  return gss_wrap_kerberos_v2(kctx, offset, buf, pages);
 }
}
