
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct asn_buf {int dummy; } ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;


 int ASN_CLASS_CONTEXT ;
 int asn_put_header (struct asn_buf*,int,int ) ;

enum asn_err
asn_put_exception(struct asn_buf *b, u_int except)
{
 return (asn_put_header(b, ASN_CLASS_CONTEXT | except, 0));
}
