
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct xdr_netobj {int len; char* data; } ;
struct xdr_buf {int dummy; } ;
struct krb5_ctx {scalar_t__ endtime; scalar_t__ initiate; TYPE_1__* gk5e; int * cksum; int mech_used; } ;
typedef scalar_t__ s32 ;
typedef int cksumdata ;
struct TYPE_2__ {int signalg; int cksumlength; scalar_t__ keyed_cksum; } ;


 int GSS_KRB5_MAX_CKSUM_LEN ;
 int GSS_KRB5_TOK_HDR_LEN ;
 int GSS_S_BAD_SIG ;
 int GSS_S_COMPLETE ;
 int GSS_S_CONTEXT_EXPIRED ;
 int GSS_S_DEFECTIVE_TOKEN ;
 int GSS_S_FAILURE ;
 int KG_TOK_MIC_MSG ;
 int KG_USAGE_SIGN ;
 int SEAL_ALG_NONE ;
 int dprintk (char*) ;
 scalar_t__ g_verify_token_header (int *,int*,unsigned char**,int) ;
 scalar_t__ get_seconds () ;
 scalar_t__ krb5_get_seq_num (struct krb5_ctx*,unsigned char*,unsigned char*,int*,int *) ;
 scalar_t__ make_checksum (struct krb5_ctx*,unsigned char*,int,struct xdr_buf*,int ,int *,int ,struct xdr_netobj*) ;
 scalar_t__ memcmp (char*,unsigned char*,int ) ;

__attribute__((used)) static u32
gss_verify_mic_v1(struct krb5_ctx *ctx,
  struct xdr_buf *message_buffer, struct xdr_netobj *read_token)
{
 int signalg;
 int sealalg;
 char cksumdata[GSS_KRB5_MAX_CKSUM_LEN];
 struct xdr_netobj md5cksum = {.len = sizeof(cksumdata),
         .data = cksumdata};
 s32 now;
 int direction;
 u32 seqnum;
 unsigned char *ptr = (unsigned char *)read_token->data;
 int bodysize;
 u8 *cksumkey;

 dprintk("RPC:       krb5_read_token\n");

 if (g_verify_token_header(&ctx->mech_used, &bodysize, &ptr,
     read_token->len))
  return GSS_S_DEFECTIVE_TOKEN;

 if ((ptr[0] != ((KG_TOK_MIC_MSG >> 8) & 0xff)) ||
     (ptr[1] != (KG_TOK_MIC_MSG & 0xff)))
  return GSS_S_DEFECTIVE_TOKEN;



 signalg = ptr[2] + (ptr[3] << 8);
 if (signalg != ctx->gk5e->signalg)
  return GSS_S_DEFECTIVE_TOKEN;

 sealalg = ptr[4] + (ptr[5] << 8);
 if (sealalg != SEAL_ALG_NONE)
  return GSS_S_DEFECTIVE_TOKEN;

 if ((ptr[6] != 0xff) || (ptr[7] != 0xff))
  return GSS_S_DEFECTIVE_TOKEN;

 if (ctx->gk5e->keyed_cksum)
  cksumkey = ctx->cksum;
 else
  cksumkey = ((void*)0);

 if (make_checksum(ctx, ptr, 8, message_buffer, 0,
     cksumkey, KG_USAGE_SIGN, &md5cksum))
  return GSS_S_FAILURE;

 if (memcmp(md5cksum.data, ptr + GSS_KRB5_TOK_HDR_LEN,
     ctx->gk5e->cksumlength))
  return GSS_S_BAD_SIG;



 now = get_seconds();

 if (now > ctx->endtime)
  return GSS_S_CONTEXT_EXPIRED;



 if (krb5_get_seq_num(ctx, ptr + GSS_KRB5_TOK_HDR_LEN, ptr + 8,
        &direction, &seqnum))
  return GSS_S_FAILURE;

 if ((ctx->initiate && direction != 0xff) ||
     (!ctx->initiate && direction != 0))
  return GSS_S_BAD_SIG;

 return GSS_S_COMPLETE;
}
