
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int skey; int num_rounds; int * vtable; } ;
typedef TYPE_1__ br_aes_big_cbcdec_keys ;


 int br_aes_big_cbcdec_vtable ;
 int br_aes_big_keysched_inv (int ,void const*,size_t) ;

void
br_aes_big_cbcdec_init(br_aes_big_cbcdec_keys *ctx,
 const void *key, size_t len)
{
 ctx->vtable = &br_aes_big_cbcdec_vtable;
 ctx->num_rounds = br_aes_big_keysched_inv(ctx->skey, key, len);
}
