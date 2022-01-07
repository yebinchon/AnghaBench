
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int br_hmac_key_context ;
struct TYPE_3__ {void const* K; void const* V; int * digest_class; } ;
typedef TYPE_1__ br_hmac_drbg_context ;
typedef int br_hmac_context ;
typedef int br_hash_class ;


 size_t br_digest_size (int const*) ;
 int br_hmac_init (int *,int *,int ) ;
 int br_hmac_key_init (int *,int const*,void const*,size_t) ;
 int br_hmac_out (int *,void const*) ;
 int br_hmac_update (int *,void const*,size_t) ;

void
br_hmac_drbg_update(br_hmac_drbg_context *ctx, const void *seed, size_t len)
{
 const br_hash_class *dig;
 br_hmac_key_context kc;
 br_hmac_context hc;
 size_t hlen;
 unsigned char x;

 dig = ctx->digest_class;
 hlen = br_digest_size(dig);




 br_hmac_key_init(&kc, dig, ctx->K, hlen);
 br_hmac_init(&hc, &kc, 0);
 br_hmac_update(&hc, ctx->V, hlen);
 x = 0x00;
 br_hmac_update(&hc, &x, 1);
 br_hmac_update(&hc, seed, len);
 br_hmac_out(&hc, ctx->K);
 br_hmac_key_init(&kc, dig, ctx->K, hlen);




 br_hmac_init(&hc, &kc, 0);
 br_hmac_update(&hc, ctx->V, hlen);
 br_hmac_out(&hc, ctx->V);




 if (len == 0) {
  return;
 }




 br_hmac_init(&hc, &kc, 0);
 br_hmac_update(&hc, ctx->V, hlen);
 x = 0x01;
 br_hmac_update(&hc, &x, 1);
 br_hmac_update(&hc, seed, len);
 br_hmac_out(&hc, ctx->K);
 br_hmac_key_init(&kc, dig, ctx->K, hlen);




 br_hmac_init(&hc, &kc, 0);
 br_hmac_update(&hc, ctx->V, hlen);
 br_hmac_out(&hc, ctx->V);
}
