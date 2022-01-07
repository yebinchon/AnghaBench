
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_netobj {int len; char* data; } ;
struct xdr_buf {int dummy; } ;
struct spkm3_ctx {int mech_used; int derived_integ_key; struct xdr_netobj ctx_id; int conf_alg; int intg_alg; } ;
typedef int s32 ;


 int CKSUMTYPE_HMAC_MD5 ;
 int GSS_S_COMPLETE ;
 int GSS_S_FAILURE ;
 int SPKM_MIC_TOK ;
 int SPKM_WRAP_TOK ;
 int asn1_bitstring_len (struct xdr_netobj*,int*,int*) ;
 int cast5_cbc_oid ;
 int dprintk (char*,...) ;
 int g_OID_equal (int *,int *) ;
 int g_make_token_header (int *,int,unsigned char**) ;
 int g_token_size (int *,int) ;
 int hmac_md5_oid ;
 int jiffies ;
 scalar_t__ make_spkm3_checksum (int ,int *,char*,int,struct xdr_buf*,int ,struct xdr_netobj*) ;
 int spkm3_make_mic_token (unsigned char**,int,struct xdr_netobj*,struct xdr_netobj*,int,int) ;
 int spkm3_mic_header (char**,int*,unsigned char*,int,int) ;

u32
spkm3_make_token(struct spkm3_ctx *ctx,
     struct xdr_buf * text, struct xdr_netobj * token,
     int toktype)
{
 s32 checksum_type;
 char tokhdrbuf[25];
 char cksumdata[16];
 struct xdr_netobj md5cksum = {.len = 0, .data = cksumdata};
 struct xdr_netobj mic_hdr = {.len = 0, .data = tokhdrbuf};
 int tokenlen = 0;
 unsigned char *ptr;
 s32 now;
 int ctxelen = 0, ctxzbit = 0;
 int md5elen = 0, md5zbit = 0;

 now = jiffies;

 if (ctx->ctx_id.len != 16) {
  dprintk("RPC:       spkm3_make_token BAD ctx_id.len %d\n",
    ctx->ctx_id.len);
  goto out_err;
 }

 if (!g_OID_equal(&ctx->intg_alg, &hmac_md5_oid)) {
  dprintk("RPC:       gss_spkm3_seal: unsupported I-ALG "
    "algorithm.  only support hmac-md5 I-ALG.\n");
  goto out_err;
 } else
  checksum_type = CKSUMTYPE_HMAC_MD5;

 if (!g_OID_equal(&ctx->conf_alg, &cast5_cbc_oid)) {
  dprintk("RPC:       gss_spkm3_seal: unsupported C-ALG "
    "algorithm\n");
  goto out_err;
 }

 if (toktype == SPKM_MIC_TOK) {

  asn1_bitstring_len(&ctx->ctx_id, &ctxelen, &ctxzbit);
  spkm3_mic_header(&mic_hdr.data, &mic_hdr.len, ctx->ctx_id.data,
    ctxelen, ctxzbit);
  if (make_spkm3_checksum(checksum_type, &ctx->derived_integ_key,
     (char *)mic_hdr.data, mic_hdr.len,
     text, 0, &md5cksum))
   goto out_err;

  asn1_bitstring_len(&md5cksum, &md5elen, &md5zbit);
  tokenlen = 10 + ctxelen + 1 + md5elen + 1;


  token->len = g_token_size(&ctx->mech_used, tokenlen + 2);

  ptr = token->data;
  g_make_token_header(&ctx->mech_used, tokenlen + 2, &ptr);

  spkm3_make_mic_token(&ptr, tokenlen, &mic_hdr, &md5cksum, md5elen, md5zbit);
 } else if (toktype == SPKM_WRAP_TOK) {
  dprintk("RPC:       gss_spkm3_seal: SPKM_WRAP_TOK "
    "not supported\n");
  goto out_err;
 }



 return GSS_S_COMPLETE;
out_err:
 token->data = ((void*)0);
 token->len = 0;
 return GSS_S_FAILURE;
}
