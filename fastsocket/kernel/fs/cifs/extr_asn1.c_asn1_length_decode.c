
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_ctx {unsigned int end; unsigned int pointer; } ;


 int asn1_octet_decode (struct asn1_ctx*,unsigned char*) ;

__attribute__((used)) static unsigned char
asn1_length_decode(struct asn1_ctx *ctx, unsigned int *def, unsigned int *len)
{
 unsigned char ch, cnt;

 if (!asn1_octet_decode(ctx, &ch))
  return 0;

 if (ch == 0x80)
  *def = 0;
 else {
  *def = 1;

  if (ch < 0x80)
   *len = ch;
  else {
   cnt = (unsigned char) (ch & 0x7F);
   *len = 0;

   while (cnt > 0) {
    if (!asn1_octet_decode(ctx, &ch))
     return 0;
    *len <<= 8;
    *len |= ch;
    cnt--;
   }
  }
 }


 if (*len > ctx->end - ctx->pointer)
  return 0;

 return 1;
}
