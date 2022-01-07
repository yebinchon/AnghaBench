
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* cbcmac; int* nonce; int* head; } ;
typedef TYPE_1__ br_eax_context ;


 int do_pad (TYPE_1__*) ;

__attribute__((used)) static void
do_final(br_eax_context *ctx)
{
 size_t u;

 do_pad(ctx);





 for (u = 0; u < 16; u ++) {
  ctx->cbcmac[u] ^= ctx->nonce[u] ^ ctx->head[u];
 }
}
