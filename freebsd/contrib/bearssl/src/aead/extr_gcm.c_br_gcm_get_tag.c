
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count_ctr; unsigned char* buf; int count_aad; int j0_2; int j0_1; TYPE_2__** bctx; int y; int h; int (* gh ) (int ,int ,unsigned char*,int) ;} ;
typedef TYPE_1__ br_gcm_context ;
struct TYPE_5__ {int (* run ) (TYPE_2__**,int ,int ,void*,int) ;} ;


 int br_enc64be (unsigned char*,int) ;
 int memcpy (void*,int ,int) ;
 int stub1 (int ,int ,unsigned char*,size_t) ;
 int stub2 (int ,int ,unsigned char*,int) ;
 int stub3 (TYPE_2__**,int ,int ,void*,int) ;

void
br_gcm_get_tag(br_gcm_context *ctx, void *tag)
{
 size_t ptr;
 unsigned char tmp[16];

 ptr = (size_t)ctx->count_ctr & (size_t)15;
 if (ptr > 0) {





  ctx->gh(ctx->y, ctx->h, ctx->buf, ptr);
 }




 br_enc64be(tmp, ctx->count_aad << 3);
 br_enc64be(tmp + 8, ctx->count_ctr << 3);
 ctx->gh(ctx->y, ctx->h, tmp, 16);





 memcpy(tag, ctx->y, 16);
 (*ctx->bctx)->run(ctx->bctx, ctx->j0_1, ctx->j0_2, tag, 16);
}
