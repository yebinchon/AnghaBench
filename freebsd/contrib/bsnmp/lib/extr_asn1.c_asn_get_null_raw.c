
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn_buf {scalar_t__ asn_len; int asn_ptr; } ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef scalar_t__ asn_len_t ;


 int ASN_ERR_BADLEN ;
 int ASN_ERR_EOBUF ;
 int ASN_ERR_OK ;
 int asn_error (struct asn_buf*,char*,...) ;

enum asn_err
asn_get_null_raw(struct asn_buf *b, asn_len_t len)
{
 if (len != 0) {
  if (b->asn_len < len) {
   asn_error(b, "truncated NULL");
   return (ASN_ERR_EOBUF);
  }
  asn_error(b, "bad length for NULL (%u)", len);
  b->asn_len -= len;
  b->asn_ptr += len;
  return (ASN_ERR_BADLEN);
 }
 return (ASN_ERR_OK);
}
