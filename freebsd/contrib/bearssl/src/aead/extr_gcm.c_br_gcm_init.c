
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int br_ghash ;
struct TYPE_6__ {unsigned char* h; int gh; TYPE_2__ const** bctx; int * vtable; } ;
typedef TYPE_1__ br_gcm_context ;
struct TYPE_7__ {int (* run ) (TYPE_2__ const**,unsigned char*,int ,unsigned char*,int) ;} ;
typedef TYPE_2__ br_block_ctr_class ;


 int br_gcm_vtable ;
 int memset (unsigned char*,int ,int) ;
 int stub1 (TYPE_2__ const**,unsigned char*,int ,unsigned char*,int) ;

void
br_gcm_init(br_gcm_context *ctx, const br_block_ctr_class **bctx, br_ghash gh)
{
 unsigned char iv[12];

 ctx->vtable = &br_gcm_vtable;
 ctx->bctx = bctx;
 ctx->gh = gh;







 memset(ctx->h, 0, sizeof ctx->h);
 memset(iv, 0, sizeof iv);
 (*bctx)->run(bctx, iv, 0, ctx->h, sizeof ctx->h);
}
