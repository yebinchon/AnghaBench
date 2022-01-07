
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_request {int error_index; int error_status; int id; } ;
struct asn1_ctx {int dummy; } ;


 unsigned int ASN1_INT ;
 unsigned int ASN1_PRI ;
 unsigned int ASN1_UNI ;
 int asn1_header_decode (struct asn1_ctx*,unsigned char**,unsigned int*,unsigned int*,unsigned int*) ;
 int asn1_uint_decode (struct asn1_ctx*,unsigned char*,int *) ;
 int asn1_ulong_decode (struct asn1_ctx*,unsigned char*,int *) ;

__attribute__((used)) static unsigned char snmp_request_decode(struct asn1_ctx *ctx,
      struct snmp_request *request)
{
 unsigned int cls, con, tag;
 unsigned char *end;

 if (!asn1_header_decode(ctx, &end, &cls, &con, &tag))
  return 0;

 if (cls != ASN1_UNI || con != ASN1_PRI || tag != ASN1_INT)
  return 0;

 if (!asn1_ulong_decode(ctx, end, &request->id))
  return 0;

 if (!asn1_header_decode(ctx, &end, &cls, &con, &tag))
  return 0;

 if (cls != ASN1_UNI || con != ASN1_PRI || tag != ASN1_INT)
  return 0;

 if (!asn1_uint_decode(ctx, end, &request->error_status))
  return 0;

 if (!asn1_header_decode(ctx, &end, &cls, &con, &tag))
  return 0;

 if (cls != ASN1_UNI || con != ASN1_PRI || tag != ASN1_INT)
  return 0;

 if (!asn1_uint_decode(ctx, end, &request->error_index))
  return 0;

 return 1;
}
