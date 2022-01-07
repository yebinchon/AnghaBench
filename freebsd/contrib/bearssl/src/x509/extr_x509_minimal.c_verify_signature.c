
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ec; int rsa; } ;
struct TYPE_7__ {int key_type; TYPE_1__ key; } ;
typedef TYPE_2__ br_x509_pkey ;
struct TYPE_8__ {int cert_signer_key_type; size_t cert_sig_hash_oid; int cert_sig_len; int cert_sig; int cert_sig_hash_len; int tbs_hash; int iec; int (* iecdsa ) (int ,int ,int ,int *,int ,int ) ;int (* irsa ) (int ,int ,int *,int ,int *,unsigned char*) ;} ;
typedef TYPE_3__ br_x509_minimal_context ;


 int BR_ERR_X509_BAD_SIGNATURE ;
 int BR_ERR_X509_UNSUPPORTED ;
 int BR_ERR_X509_WRONG_KEY_TYPE ;


 int memcmp (int ,unsigned char*,int ) ;
 int stub1 (int ,int ,int *,int ,int *,unsigned char*) ;
 int stub2 (int ,int ,int ,int *,int ,int ) ;
 int * t0_datablock ;

__attribute__((used)) static int
verify_signature(br_x509_minimal_context *ctx, const br_x509_pkey *pk)
{
 int kt;

 kt = ctx->cert_signer_key_type;
 if ((pk->key_type & 0x0F) != kt) {
  return BR_ERR_X509_WRONG_KEY_TYPE;
 }
 switch (kt) {
  unsigned char tmp[64];

 case 128:
  if (ctx->irsa == 0) {
   return BR_ERR_X509_UNSUPPORTED;
  }
  if (!ctx->irsa(ctx->cert_sig, ctx->cert_sig_len,
   &t0_datablock[ctx->cert_sig_hash_oid],
   ctx->cert_sig_hash_len, &pk->key.rsa, tmp))
  {
   return BR_ERR_X509_BAD_SIGNATURE;
  }
  if (memcmp(ctx->tbs_hash, tmp, ctx->cert_sig_hash_len) != 0) {
   return BR_ERR_X509_BAD_SIGNATURE;
  }
  return 0;

 case 129:
  if (ctx->iecdsa == 0) {
   return BR_ERR_X509_UNSUPPORTED;
  }
  if (!ctx->iecdsa(ctx->iec, ctx->tbs_hash,
   ctx->cert_sig_hash_len, &pk->key.ec,
   ctx->cert_sig, ctx->cert_sig_len))
  {
   return BR_ERR_X509_BAD_SIGNATURE;
  }
  return 0;

 default:
  return BR_ERR_X509_UNSUPPORTED;
 }
}
