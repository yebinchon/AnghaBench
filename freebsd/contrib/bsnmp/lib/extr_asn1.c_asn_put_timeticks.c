
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct asn_buf {int dummy; } ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;


 int ASN_APP_TIMETICKS ;
 int ASN_CLASS_APPLICATION ;
 int asn_put_real_unsigned (struct asn_buf*,int,int ) ;

enum asn_err
asn_put_timeticks(struct asn_buf *b, uint32_t val)
{
 uint64_t v = val;

 return (asn_put_real_unsigned(b,
     ASN_CLASS_APPLICATION | ASN_APP_TIMETICKS, v));
}
