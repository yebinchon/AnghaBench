
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct asn_buf {scalar_t__ asn_len; int * asn_ptr; } ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef int asn_len_t ;


 int ASN_ERR_EOBUF ;
 int ASN_ERR_FAILED ;
 int ASN_ERR_OK ;
 int ASN_TYPE_MASK ;
 int asn_error (int *,char*,int) ;
 scalar_t__ asn_put_len (int *,int ) ;

enum asn_err
asn_put_header(struct asn_buf *b, u_char type, asn_len_t len)
{
 u_int lenlen;


 if ((type & ASN_TYPE_MASK) > 0x30) {
  asn_error(((void*)0), "types > 0x30 not supported (%u)",
      type & ASN_TYPE_MASK);
  return (ASN_ERR_FAILED);
 }
 if (b->asn_len == 0)
  return (ASN_ERR_EOBUF);

 *b->asn_ptr++ = type;
 b->asn_len--;


 if ((lenlen = asn_put_len(((void*)0), len)) == 0)
  return (ASN_ERR_FAILED);
 if (b->asn_len < lenlen)
  return (ASN_ERR_EOBUF);

 (void)asn_put_len(b->asn_ptr, len);
 b->asn_ptr += lenlen;
 b->asn_len -= lenlen;
 return (ASN_ERR_OK);
}
