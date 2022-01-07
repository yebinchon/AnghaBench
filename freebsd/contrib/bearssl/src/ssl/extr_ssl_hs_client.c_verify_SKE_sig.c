
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ec; int rsa; } ;
struct TYPE_11__ {TYPE_1__ key; } ;
typedef TYPE_3__ br_x509_pkey ;
struct TYPE_12__ {TYPE_3__* (* get_pkey ) (TYPE_4__ const**,int *) ;} ;
typedef TYPE_4__ br_x509_class ;
struct TYPE_10__ {unsigned char* client_random; unsigned char* server_random; unsigned char ecdhe_curve; unsigned char ecdhe_point_len; unsigned char* ecdhe_point; int pad; int iec; int (* iecdsa ) (int ,unsigned char*,size_t,int *,int ,size_t) ;int (* irsavrfy ) (int ,size_t,unsigned char const*,size_t,int *,unsigned char*) ;int mhash; TYPE_4__** x509ctx; } ;
struct TYPE_13__ {TYPE_2__ eng; } ;
typedef TYPE_5__ br_ssl_client_context ;
typedef int br_multihash_context ;


 int BR_ERR_BAD_SIGNATURE ;
 int BR_ERR_INVALID_ALGORITHM ;
 unsigned char** HASH_OID ;
 int br_md5_ID ;
 int br_multihash_copyimpl (int *,int *) ;
 int br_multihash_init (int *) ;
 size_t br_multihash_out (int *,int,unsigned char*) ;
 int br_multihash_update (int *,unsigned char*,int) ;
 int br_multihash_zero (int *) ;
 int br_sha1_ID ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,size_t) ;
 TYPE_3__* stub1 (TYPE_4__ const**,int *) ;
 int stub2 (int ,size_t,unsigned char const*,size_t,int *,unsigned char*) ;
 int stub3 (int ,unsigned char*,size_t,int *,int ,size_t) ;

__attribute__((used)) static int
verify_SKE_sig(br_ssl_client_context *ctx,
 int hash, int use_rsa, size_t sig_len)
{
 const br_x509_class **xc;
 const br_x509_pkey *pk;
 br_multihash_context mhc;
 unsigned char hv[64], head[4];
 size_t hv_len;

 xc = ctx->eng.x509ctx;
 pk = (*xc)->get_pkey(xc, ((void*)0));
 br_multihash_zero(&mhc);
 br_multihash_copyimpl(&mhc, &ctx->eng.mhash);
 br_multihash_init(&mhc);
 br_multihash_update(&mhc,
  ctx->eng.client_random, sizeof ctx->eng.client_random);
 br_multihash_update(&mhc,
  ctx->eng.server_random, sizeof ctx->eng.server_random);
 head[0] = 3;
 head[1] = 0;
 head[2] = ctx->eng.ecdhe_curve;
 head[3] = ctx->eng.ecdhe_point_len;
 br_multihash_update(&mhc, head, sizeof head);
 br_multihash_update(&mhc,
  ctx->eng.ecdhe_point, ctx->eng.ecdhe_point_len);
 if (hash) {
  hv_len = br_multihash_out(&mhc, hash, hv);
  if (hv_len == 0) {
   return BR_ERR_INVALID_ALGORITHM;
  }
 } else {
  if (!br_multihash_out(&mhc, br_md5_ID, hv)
   || !br_multihash_out(&mhc, br_sha1_ID, hv + 16))
  {
   return BR_ERR_INVALID_ALGORITHM;
  }
  hv_len = 36;
 }
 if (use_rsa) {
  unsigned char tmp[64];
  const unsigned char *hash_oid;

  if (hash) {
   hash_oid = HASH_OID[hash - 2];
  } else {
   hash_oid = ((void*)0);
  }
  if (!ctx->eng.irsavrfy(ctx->eng.pad, sig_len,
   hash_oid, hv_len, &pk->key.rsa, tmp)
   || memcmp(tmp, hv, hv_len) != 0)
  {
   return BR_ERR_BAD_SIGNATURE;
  }
 } else {
  if (!ctx->eng.iecdsa(ctx->eng.iec, hv, hv_len, &pk->key.ec,
   ctx->eng.pad, sig_len))
  {
   return BR_ERR_BAD_SIGNATURE;
  }
 }
 return 0;
}
