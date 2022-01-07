
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn_buf {int dummy; } ;
typedef int int32_t ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;


 int ASN_TYPE_INTEGER ;
 int asn_put_real_integer (struct asn_buf*,int ,int ) ;

enum asn_err
asn_put_integer(struct asn_buf *b, int32_t val)
{
 return (asn_put_real_integer(b, ASN_TYPE_INTEGER, val));
}
