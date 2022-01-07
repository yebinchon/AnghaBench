
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct asn_oid {int dummy; } ;
struct asn_buf {int dummy; } ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef int asn_len_t ;


 int ASN_ERR_OK ;
 int ASN_ERR_TAG ;
 scalar_t__ ASN_TYPE_OBJID ;
 int asn_error (struct asn_buf*,char*,scalar_t__) ;
 int asn_get_header (struct asn_buf*,scalar_t__*,int *) ;
 int asn_get_objid_raw (struct asn_buf*,int ,struct asn_oid*) ;

enum asn_err
asn_get_objid(struct asn_buf *b, struct asn_oid *oid)
{
 u_char type;
 asn_len_t len;
 enum asn_err err;

 if ((err = asn_get_header(b, &type, &len)) != ASN_ERR_OK)
  return (err);
 if (type != ASN_TYPE_OBJID) {
  asn_error(b, "bad type for OBJID (%u)", type);
  return (ASN_ERR_TAG);
 }
 return (asn_get_objid_raw(b, len, oid));
}
