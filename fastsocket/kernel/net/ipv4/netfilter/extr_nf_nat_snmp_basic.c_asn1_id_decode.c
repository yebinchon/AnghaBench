
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_ctx {int dummy; } ;


 int asn1_octet_decode (struct asn1_ctx*,unsigned char*) ;
 int asn1_tag_decode (struct asn1_ctx*,unsigned int*) ;

__attribute__((used)) static unsigned char asn1_id_decode(struct asn1_ctx *ctx,
        unsigned int *cls,
        unsigned int *con,
        unsigned int *tag)
{
 unsigned char ch;

 if (!asn1_octet_decode(ctx, &ch))
  return 0;

 *cls = (ch & 0xC0) >> 6;
 *con = (ch & 0x20) >> 5;
 *tag = (ch & 0x1F);

 if (*tag == 0x1F) {
  if (!asn1_tag_decode(ctx, tag))
   return 0;
 }
 return 1;
}
