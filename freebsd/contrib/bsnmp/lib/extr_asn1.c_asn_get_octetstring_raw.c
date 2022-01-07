
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct asn_buf {scalar_t__ asn_len; int asn_cptr; } ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef scalar_t__ asn_len_t ;


 int ASN_ERR_EOBUF ;
 int ASN_ERR_OK ;
 int ASN_ERR_RANGE ;
 int asn_error (struct asn_buf*,char*) ;
 int memcpy (int *,int ,scalar_t__) ;

enum asn_err
asn_get_octetstring_raw(struct asn_buf *b, asn_len_t len, u_char *octets,
    u_int *noctets)
{
 enum asn_err err = ASN_ERR_OK;

 if (*noctets < len) {
  asn_error(b, "octetstring truncated");
  err = ASN_ERR_RANGE;
 }
 if (b->asn_len < len) {
  asn_error(b, "truncatet octetstring");
  return (ASN_ERR_EOBUF);
 }
 if (*noctets < len)
  memcpy(octets, b->asn_cptr, *noctets);
 else
  memcpy(octets, b->asn_cptr, len);
 *noctets = len;
 b->asn_cptr += len;
 b->asn_len -= len;
 return (err);
}
