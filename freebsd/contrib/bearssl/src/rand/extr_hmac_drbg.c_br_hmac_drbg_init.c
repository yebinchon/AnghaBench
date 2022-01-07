
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const* digest_class; int V; int K; int * vtable; } ;
typedef TYPE_1__ br_hmac_drbg_context ;
typedef int br_hash_class ;


 size_t br_digest_size (int const*) ;
 int br_hmac_drbg_update (TYPE_1__*,void const*,size_t) ;
 int br_hmac_drbg_vtable ;
 int memset (int ,int,size_t) ;

void
br_hmac_drbg_init(br_hmac_drbg_context *ctx,
 const br_hash_class *digest_class, const void *seed, size_t len)
{
 size_t hlen;

 ctx->vtable = &br_hmac_drbg_vtable;
 hlen = br_digest_size(digest_class);
 memset(ctx->K, 0x00, hlen);
 memset(ctx->V, 0x01, hlen);
 ctx->digest_class = digest_class;
 br_hmac_drbg_update(ctx, seed, len);
}
