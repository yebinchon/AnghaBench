
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_3__* vtable; } ;
struct TYPE_7__ {int cc; TYPE_1__ sk; } ;
typedef TYPE_2__ br_aesctr_drbg_context ;
struct TYPE_8__ {int (* run ) (TYPE_3__**,unsigned char*,int,unsigned char*,size_t) ;} ;


 int br_aesctr_drbg_update (TYPE_2__*,int *,int ) ;
 int memset (unsigned char*,int ,size_t) ;
 int stub1 (TYPE_3__**,unsigned char*,int,unsigned char*,size_t) ;

void
br_aesctr_drbg_generate(br_aesctr_drbg_context *ctx, void *out, size_t len)
{
 unsigned char *buf;
 unsigned char iv[12];

 buf = out;
 memset(iv, 0, sizeof iv);
 while (len > 0) {
  size_t clen;







  clen = len;
  if (clen > 65280) {
   clen = 65280;
  }





  if ((uint32_t)(ctx->cc + ((clen + 15) >> 4)) > 32768) {
   clen = (32768 - ctx->cc) << 4;
   if (clen > len) {
    clen = len;
   }
  }




  memset(buf, 0, clen);
  ctx->cc = ctx->sk.vtable->run(&ctx->sk.vtable,
   iv, ctx->cc, buf, clen);
  buf += clen;
  len -= clen;




  if (ctx->cc >= 32768) {
   br_aesctr_drbg_update(ctx, ((void*)0), 0);
  }
 }
}
