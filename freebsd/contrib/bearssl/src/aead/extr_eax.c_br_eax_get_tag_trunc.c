
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cbcmac; } ;
typedef TYPE_1__ br_eax_context ;


 int do_final (TYPE_1__*) ;
 int memcpy (void*,int ,size_t) ;

void
br_eax_get_tag_trunc(br_eax_context *ctx, void *tag, size_t len)
{
 do_final(ctx);
 memcpy(tag, ctx->cbcmac, len);
}
