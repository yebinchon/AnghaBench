
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* vtable; } ;
struct TYPE_10__ {scalar_t__ cc; TYPE_1__ sk; } ;
typedef TYPE_2__ br_aesctr_drbg_context ;
struct TYPE_11__ {int (* init ) (TYPE_3__**,unsigned char*,int) ;int (* run ) (TYPE_3__**,unsigned char*,int,unsigned char*,int) ;} ;


 int br_dec32be (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int,int) ;
 int stub1 (TYPE_3__**,unsigned char*,int,unsigned char*,int) ;
 int stub2 (TYPE_3__**,unsigned char*,int) ;
 int stub3 (TYPE_3__**,unsigned char*,int,unsigned char*,int) ;
 int stub4 (TYPE_3__**,unsigned char*,int,unsigned char*,int) ;
 int stub5 (TYPE_3__**,unsigned char*,int) ;

void
br_aesctr_drbg_update(br_aesctr_drbg_context *ctx, const void *seed, size_t len)
{
 unsigned char s[16], iv[12];
 unsigned char G[16], H[16];
 int first;





 memset(iv, 0xFF, sizeof iv);
 memset(s, 0, 16);
 ctx->sk.vtable->run(&ctx->sk.vtable, iv, 0xFFFFFFFF, s, 16);




 memset(G, 0xB6, sizeof G);
 memset(H, 0x5A, sizeof H);





 first = 1;
 for (;;) {
  unsigned char tmp[32];
  unsigned char newG[16];




  memcpy(tmp, H, 16);
  if (first) {
   memcpy(tmp + 16, s, 16);
   first = 0;
  } else {
   size_t clen;

   if (len == 0) {
    break;
   }
   clen = len < 16 ? len : 16;
   memcpy(tmp + 16, seed, clen);
   memset(tmp + 16 + clen, 0, 16 - clen);
   seed = (const unsigned char *)seed + clen;
   len -= clen;
  }
  ctx->sk.vtable->init(&ctx->sk.vtable, tmp, 32);




  memcpy(iv, G, 12);
  memcpy(newG, G, 16);
  ctx->sk.vtable->run(&ctx->sk.vtable, iv,
   br_dec32be(G + 12), newG, 16);
  iv[0] ^= 0x01;
  memcpy(H, G, 16);
  H[0] ^= 0x01;
  ctx->sk.vtable->run(&ctx->sk.vtable, iv,
   br_dec32be(G + 12), H, 16);
  memcpy(G, newG, 16);
 }





 ctx->sk.vtable->init(&ctx->sk.vtable, H, 16);
 ctx->cc = 0;
}
