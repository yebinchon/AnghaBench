
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_ctx {unsigned char* pointer; } ;



__attribute__((used)) static unsigned char asn1_null_decode(struct asn1_ctx *ctx, unsigned char *eoc)
{
 ctx->pointer = eoc;
 return 1;
}
