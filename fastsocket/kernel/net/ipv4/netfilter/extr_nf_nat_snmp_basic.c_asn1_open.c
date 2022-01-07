
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_ctx {unsigned char* begin; unsigned char* end; unsigned char* pointer; int error; } ;


 int ASN1_ERR_NOERROR ;

__attribute__((used)) static void asn1_open(struct asn1_ctx *ctx,
        unsigned char *buf,
        unsigned int len)
{
 ctx->begin = buf;
 ctx->end = buf + len;
 ctx->pointer = buf;
 ctx->error = ASN1_ERR_NOERROR;
}
