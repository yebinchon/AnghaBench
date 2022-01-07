
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int br_hmac_key_context ;
struct TYPE_3__ {unsigned char* K; unsigned char* V; int * digest_class; } ;
typedef TYPE_1__ br_hmac_drbg_context ;
typedef int br_hmac_context ;
typedef int br_hash_class ;


 size_t br_digest_size (int const*) ;
 int br_hmac_init (int *,int *,int ) ;
 int br_hmac_key_init (int *,int const*,unsigned char*,size_t) ;
 int br_hmac_out (int *,unsigned char*) ;
 int br_hmac_update (int *,unsigned char*,size_t) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

void
br_hmac_drbg_generate(br_hmac_drbg_context *ctx, void *out, size_t len)
{
 const br_hash_class *dig;
 br_hmac_key_context kc;
 br_hmac_context hc;
 size_t hlen;
 unsigned char *buf;
 unsigned char x;

 dig = ctx->digest_class;
 hlen = br_digest_size(dig);
 br_hmac_key_init(&kc, dig, ctx->K, hlen);
 buf = out;
 while (len > 0) {
  size_t clen;

  br_hmac_init(&hc, &kc, 0);
  br_hmac_update(&hc, ctx->V, hlen);
  br_hmac_out(&hc, ctx->V);
  clen = hlen;
  if (clen > len) {
   clen = len;
  }
  memcpy(buf, ctx->V, clen);
  buf += clen;
  len -= clen;
 }
 br_hmac_init(&hc, &kc, 0);
 br_hmac_update(&hc, ctx->V, hlen);
 x = 0x00;
 br_hmac_update(&hc, &x, 1);
 br_hmac_out(&hc, ctx->K);
 br_hmac_key_init(&kc, dig, ctx->K, hlen);
 br_hmac_init(&hc, &kc, 0);
 br_hmac_update(&hc, ctx->V, hlen);
 br_hmac_out(&hc, ctx->V);
}
