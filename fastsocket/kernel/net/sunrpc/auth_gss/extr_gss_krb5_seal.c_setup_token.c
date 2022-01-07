
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_netobj {scalar_t__ data; int len; } ;
struct krb5_ctx {TYPE_1__* gk5e; int mech_used; } ;
typedef int __be16 ;
struct TYPE_2__ {int cksumlength; int signalg; } ;


 int GSS_KRB5_TOK_HDR_LEN ;
 int KG_TOK_MIC_MSG ;
 int SEAL_ALG_NONE ;
 int cpu_to_le16 (int ) ;
 int g_make_token_header (int *,int,unsigned char**) ;
 int g_token_size (int *,int) ;

__attribute__((used)) static char *
setup_token(struct krb5_ctx *ctx, struct xdr_netobj *token)
{
 __be16 *ptr, *krb5_hdr;
 int body_size = GSS_KRB5_TOK_HDR_LEN + ctx->gk5e->cksumlength;

 token->len = g_token_size(&ctx->mech_used, body_size);

 ptr = (__be16 *)token->data;
 g_make_token_header(&ctx->mech_used, body_size, (unsigned char **)&ptr);


 krb5_hdr = ptr;
 *ptr++ = KG_TOK_MIC_MSG;
 *ptr++ = cpu_to_le16(ctx->gk5e->signalg);
 *ptr++ = SEAL_ALG_NONE;
 *ptr++ = 0xffff;

 return (char *)krb5_hdr;
}
