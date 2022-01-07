
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* L2; unsigned char* L4; TYPE_2__ const** bctx; int * vtable; } ;
typedef TYPE_1__ br_eax_context ;
struct TYPE_7__ {int (* ctr ) (TYPE_2__ const**,unsigned char*,unsigned char*,int) ;} ;
typedef TYPE_2__ br_block_ctrcbc_class ;


 int br_eax_vtable ;
 int double_gf128 (unsigned char*,unsigned char*) ;
 int memset (unsigned char*,int ,int) ;
 int stub1 (TYPE_2__ const**,unsigned char*,unsigned char*,int) ;

void
br_eax_init(br_eax_context *ctx, const br_block_ctrcbc_class **bctx)
{
 unsigned char tmp[16], iv[16];

 ctx->vtable = &br_eax_vtable;
 ctx->bctx = bctx;




 memset(tmp, 0, sizeof tmp);
 memset(iv, 0, sizeof iv);
 (*bctx)->ctr(bctx, iv, tmp, sizeof tmp);
 double_gf128(ctx->L2, tmp);
 double_gf128(ctx->L4, ctx->L2);
}
