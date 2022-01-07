
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_ctx {unsigned char* pointer; void* error; } ;


 void* ASN1_ERR_DEC_EOC_MISMATCH ;
 void* ASN1_ERR_DEC_LENGTH_MISMATCH ;
 int asn1_octet_decode (struct asn1_ctx*,unsigned char*) ;

__attribute__((used)) static unsigned char asn1_eoc_decode(struct asn1_ctx *ctx, unsigned char *eoc)
{
 unsigned char ch;

 if (eoc == ((void*)0)) {
  if (!asn1_octet_decode(ctx, &ch))
   return 0;

  if (ch != 0x00) {
   ctx->error = ASN1_ERR_DEC_EOC_MISMATCH;
   return 0;
  }

  if (!asn1_octet_decode(ctx, &ch))
   return 0;

  if (ch != 0x00) {
   ctx->error = ASN1_ERR_DEC_EOC_MISMATCH;
   return 0;
  }
  return 1;
 } else {
  if (ctx->pointer != eoc) {
   ctx->error = ASN1_ERR_DEC_LENGTH_MISMATCH;
   return 0;
  }
  return 1;
 }
}
