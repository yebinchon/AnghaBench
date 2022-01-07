
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_netobj {char* data; int len; } ;
struct xdr_buf {int dummy; } ;
struct spkm3_ctx {int derived_integ_key; int intg_alg; int mech_used; } ;
typedef scalar_t__ s32 ;


 scalar_t__ CKSUMTYPE_HMAC_MD5 ;
 int GSS_S_BAD_SIG ;
 int GSS_S_COMPLETE ;
 int GSS_S_DEFECTIVE_TOKEN ;
 int SPKM_MIC_TOK ;
 int decode_asn1_bitstring (struct xdr_netobj*,unsigned char*,int,int) ;
 int dprintk (char*,...) ;
 int g_OID_equal (int *,int *) ;
 scalar_t__ g_verify_token_header (struct xdr_netobj*,int*,unsigned char**,int ) ;
 int hmac_md5_oid ;
 int kfree (char*) ;
 scalar_t__ make_spkm3_checksum (scalar_t__,int *,unsigned char*,int,struct xdr_buf*,int ,struct xdr_netobj*) ;
 scalar_t__ memcmp (char*,char*,int ) ;
 int spkm3_verify_mic_token (unsigned char**,int*,unsigned char**) ;

u32
spkm3_read_token(struct spkm3_ctx *ctx,
  struct xdr_netobj *read_token,
  struct xdr_buf *message_buffer,
  int toktype)
{
 s32 checksum_type;
 s32 code;
 struct xdr_netobj wire_cksum = {.len =0, .data = ((void*)0)};
 char cksumdata[16];
 struct xdr_netobj md5cksum = {.len = 0, .data = cksumdata};
 unsigned char *ptr = (unsigned char *)read_token->data;
 unsigned char *cksum;
 int bodysize, md5elen;
 int mic_hdrlen;
 u32 ret = GSS_S_DEFECTIVE_TOKEN;

 if (g_verify_token_header((struct xdr_netobj *) &ctx->mech_used,
     &bodysize, &ptr, read_token->len))
  goto out;



 if (toktype != SPKM_MIC_TOK) {
  dprintk("RPC:       BAD SPKM3 token type: %d\n", toktype);
  goto out;
 }

 if ((ret = spkm3_verify_mic_token(&ptr, &mic_hdrlen, &cksum)))
  goto out;

 if (*cksum++ != 0x03) {
  dprintk("RPC:       spkm3_read_token BAD checksum type\n");
  goto out;
 }
 md5elen = *cksum++;
 cksum++;

 if (!decode_asn1_bitstring(&wire_cksum, cksum, md5elen - 1, 16))
  goto out;







 ret = GSS_S_DEFECTIVE_TOKEN;
 if (!g_OID_equal(&ctx->intg_alg, &hmac_md5_oid)) {
  dprintk("RPC:       gss_spkm3_seal: unsupported I-ALG "
    "algorithm\n");
  goto out;
 }

 checksum_type = CKSUMTYPE_HMAC_MD5;

 code = make_spkm3_checksum(checksum_type,
  &ctx->derived_integ_key, ptr + 2, mic_hdrlen + 2,
  message_buffer, 0, &md5cksum);

 if (code)
  goto out;

 ret = GSS_S_BAD_SIG;
 code = memcmp(md5cksum.data, wire_cksum.data, wire_cksum.len);
 if (code) {
  dprintk("RPC:       bad MIC checksum\n");
  goto out;
 }



 ret = GSS_S_COMPLETE;
out:
 kfree(wire_cksum.data);
 return ret;
}
