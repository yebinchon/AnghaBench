
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {void** skey; int num_rounds; int * vtable; } ;
typedef TYPE_1__ br_des_ct_cbcdec_keys ;


 int br_des_ct_cbcdec_vtable ;
 int br_des_ct_keysched (void**,void const*,size_t) ;
 int br_des_rev_skey (void**) ;

void
br_des_ct_cbcdec_init(br_des_ct_cbcdec_keys *ctx,
 const void *key, size_t len)
{
 ctx->vtable = &br_des_ct_cbcdec_vtable;
 ctx->num_rounds = br_des_ct_keysched(ctx->skey, key, len);
 if (len == 8) {
  br_des_rev_skey(ctx->skey);
 } else {
  int i;

  for (i = 0; i < 48; i += 2) {
   uint32_t t;

   t = ctx->skey[i];
   ctx->skey[i] = ctx->skey[94 - i];
   ctx->skey[94 - i] = t;
   t = ctx->skey[i + 1];
   ctx->skey[i + 1] = ctx->skey[95 - i];
   ctx->skey[95 - i] = t;
  }
 }
}
