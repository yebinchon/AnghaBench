
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t ptr; scalar_t__ buf; } ;
typedef TYPE_1__ br_eax_context ;


 int do_cbcmac_chunk (TYPE_1__*,void const*,size_t) ;
 int memcpy (scalar_t__,void const*,size_t) ;

void
br_eax_aad_inject(br_eax_context *ctx, const void *data, size_t len)
{
 size_t ptr;

 ptr = ctx->ptr;




 if (ptr < 16) {
  size_t clen;

  clen = 16 - ptr;
  if (len <= clen) {
   memcpy(ctx->buf + ptr, data, len);
   ctx->ptr = ptr + len;
   return;
  }
  memcpy(ctx->buf + ptr, data, clen);
  data = (const unsigned char *)data + clen;
  len -= clen;
 }





 do_cbcmac_chunk(ctx, data, len);
}
