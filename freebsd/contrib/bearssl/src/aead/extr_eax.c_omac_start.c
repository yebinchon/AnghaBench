
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* cbcmac; unsigned int* buf; int ptr; } ;
typedef TYPE_1__ br_eax_context ;


 int memset (unsigned int*,int ,int) ;

__attribute__((used)) static void
omac_start(br_eax_context *ctx, unsigned val)
{
 memset(ctx->cbcmac, 0, sizeof ctx->cbcmac);
 memset(ctx->buf, 0, sizeof ctx->buf);
 ctx->buf[15] = val;
 ctx->ptr = 16;
}
