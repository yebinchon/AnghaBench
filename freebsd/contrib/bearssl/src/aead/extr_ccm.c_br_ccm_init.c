
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const** bctx; } ;
typedef TYPE_1__ br_ccm_context ;
typedef int br_block_ctrcbc_class ;



void
br_ccm_init(br_ccm_context *ctx, const br_block_ctrcbc_class **bctx)
{
 ctx->bctx = bctx;
}
