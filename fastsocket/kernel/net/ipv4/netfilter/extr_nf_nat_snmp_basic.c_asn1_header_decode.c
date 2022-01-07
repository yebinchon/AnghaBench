
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_ctx {unsigned char* pointer; } ;


 unsigned int ASN1_PRI ;
 int asn1_id_decode (struct asn1_ctx*,unsigned int*,unsigned int*,unsigned int*) ;
 int asn1_length_decode (struct asn1_ctx*,unsigned int*,unsigned int*) ;

__attribute__((used)) static unsigned char asn1_header_decode(struct asn1_ctx *ctx,
     unsigned char **eoc,
     unsigned int *cls,
     unsigned int *con,
     unsigned int *tag)
{
 unsigned int def, len;

 if (!asn1_id_decode(ctx, cls, con, tag))
  return 0;

 def = len = 0;
 if (!asn1_length_decode(ctx, &def, &len))
  return 0;


 if (*con == ASN1_PRI && !def)
  return 0;

 if (def)
  *eoc = ctx->pointer + len;
 else
  *eoc = ((void*)0);
 return 1;
}
