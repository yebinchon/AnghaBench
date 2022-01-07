
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; int h; int y; int (* gh ) (int ,int ,int ,size_t) ;scalar_t__ count_aad; } ;
typedef TYPE_1__ br_gcm_context ;


 int stub1 (int ,int ,int ,size_t) ;

void
br_gcm_flip(br_gcm_context *ctx)
{





 size_t ptr;

 ptr = (size_t)ctx->count_aad & (size_t)15;
 if (ptr != 0) {
  ctx->gh(ctx->y, ctx->h, ctx->buf, ptr);
 }
}
