
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn_buf {int dummy; } ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;


 int ASN_TYPE_NULL ;
 int asn_put_header (struct asn_buf*,int ,int ) ;

enum asn_err
asn_put_null(struct asn_buf *b)
{
 return (asn_put_header(b, ASN_TYPE_NULL, 0));
}
