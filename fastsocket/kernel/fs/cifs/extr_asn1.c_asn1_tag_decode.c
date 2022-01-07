
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_ctx {int dummy; } ;


 int asn1_octet_decode (struct asn1_ctx*,unsigned char*) ;

__attribute__((used)) static unsigned char
asn1_tag_decode(struct asn1_ctx *ctx, unsigned int *tag)
{
 unsigned char ch;

 *tag = 0;

 do {
  if (!asn1_octet_decode(ctx, &ch))
   return 0;
  *tag <<= 7;
  *tag |= ch & 0x7F;
 } while ((ch & 0x80) == 0x80);
 return 1;
}
