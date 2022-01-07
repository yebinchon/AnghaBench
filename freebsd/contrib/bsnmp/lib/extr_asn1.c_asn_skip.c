
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn_buf {scalar_t__ asn_len; int asn_cptr; } ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef scalar_t__ asn_len_t ;


 int ASN_ERR_EOBUF ;
 int ASN_ERR_OK ;

enum asn_err
asn_skip(struct asn_buf *b, asn_len_t len)
{
 if (b->asn_len < len)
  return (ASN_ERR_EOBUF);
 b->asn_cptr += len;
 b->asn_len -= len;
 return (ASN_ERR_OK);
}
