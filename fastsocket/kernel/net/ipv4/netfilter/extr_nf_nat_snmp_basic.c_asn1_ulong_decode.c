
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_ctx {unsigned char* pointer; int error; } ;


 int ASN1_ERR_DEC_BADVALUE ;
 int asn1_octet_decode (struct asn1_ctx*,unsigned char*) ;

__attribute__((used)) static unsigned char asn1_ulong_decode(struct asn1_ctx *ctx,
           unsigned char *eoc,
           unsigned long *integer)
{
 unsigned char ch;
 unsigned int len;

 if (!asn1_octet_decode(ctx, &ch))
  return 0;

 *integer = ch;
 if (ch == 0) len = 0;
 else len = 1;

 while (ctx->pointer < eoc) {
  if (++len > sizeof (unsigned long)) {
   ctx->error = ASN1_ERR_DEC_BADVALUE;
   return 0;
  }

  if (!asn1_octet_decode(ctx, &ch))
   return 0;

  *integer <<= 8;
  *integer |= ch;
 }
 return 1;
}
