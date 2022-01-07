
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {scalar_t__ sec_name; } ;
struct TYPE_3__ {int engine_len; int engine_time; int engine_boots; scalar_t__ engine_id; } ;
struct snmp_pdu {int flags; int * encrypted_ptr; int * digest_ptr; scalar_t__ msg_salt; scalar_t__ msg_digest; TYPE_2__ user; TYPE_1__ engine; } ;
struct asn_buf {int asn_len; int * asn_ptr; } ;
typedef enum snmp_code { ____Placeholder_snmp_code } snmp_code ;
typedef int buf ;


 scalar_t__ ASN_ERR_OK ;
 int ASN_MAXLENLEN ;
 int ASN_TYPE_CONSTRUCTED ;
 int ASN_TYPE_OCTETSTRING ;
 int ASN_TYPE_SEQUENCE ;
 int SNMP_CODE_FAILED ;
 int SNMP_CODE_OK ;
 int SNMP_MSG_AUTH_FLAG ;
 int SNMP_MSG_PRIV_FLAG ;
 scalar_t__ asn_commit_header (struct asn_buf*,int *,size_t*) ;
 scalar_t__ asn_put_integer (struct asn_buf*,int ) ;
 scalar_t__ asn_put_octetstring (struct asn_buf*,int *,int) ;
 scalar_t__ asn_put_temp_header (struct asn_buf*,int,int **) ;
 int memset (int *,int ,int) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static enum snmp_code
pdu_encode_secparams(struct asn_buf *b, struct snmp_pdu *pdu)
{
 u_char buf[256], *sptr;
 struct asn_buf tb;
 size_t auth_off, moved = 0;

 auth_off = 0;
 memset(buf, 0, 256);
 tb.asn_ptr = buf;
 tb.asn_len = 256;

 if (asn_put_temp_header(&tb, (ASN_TYPE_SEQUENCE|ASN_TYPE_CONSTRUCTED),
     &sptr) != ASN_ERR_OK)
  return (SNMP_CODE_FAILED);

 if (asn_put_octetstring(&tb, (u_char *)pdu->engine.engine_id,
     pdu->engine.engine_len) != ASN_ERR_OK)
  return (SNMP_CODE_FAILED);

 if (asn_put_integer(&tb, pdu->engine.engine_boots) != ASN_ERR_OK)
  return (SNMP_CODE_FAILED);

 if (asn_put_integer(&tb, pdu->engine.engine_time) != ASN_ERR_OK)
  return (SNMP_CODE_FAILED);

 if (asn_put_octetstring(&tb, (u_char *)pdu->user.sec_name,
     strlen(pdu->user.sec_name)) != ASN_ERR_OK)
  return (SNMP_CODE_FAILED);

 if ((pdu->flags & SNMP_MSG_AUTH_FLAG) != 0) {
  auth_off = sizeof(buf) - tb.asn_len + ASN_MAXLENLEN;
  if (asn_put_octetstring(&tb, (u_char *)pdu->msg_digest,
      sizeof(pdu->msg_digest)) != ASN_ERR_OK)
   return (SNMP_CODE_FAILED);
 } else {
  if (asn_put_octetstring(&tb, (u_char *)pdu->msg_digest, 0)
      != ASN_ERR_OK)
   return (SNMP_CODE_FAILED);
 }

 if ((pdu->flags & SNMP_MSG_PRIV_FLAG) != 0) {
  if (asn_put_octetstring(&tb, (u_char *)pdu->msg_salt,
      sizeof(pdu->msg_salt)) != ASN_ERR_OK)
   return (SNMP_CODE_FAILED);
 } else {
  if (asn_put_octetstring(&tb, (u_char *)pdu->msg_salt, 0)
      != ASN_ERR_OK)
   return (SNMP_CODE_FAILED);
 }

 if (asn_commit_header(&tb, sptr, &moved) != ASN_ERR_OK)
  return (SNMP_CODE_FAILED);

 if ((pdu->flags & SNMP_MSG_AUTH_FLAG) != 0)
  pdu->digest_ptr = b->asn_ptr + auth_off - moved;

 if (asn_put_octetstring(b, buf, sizeof(buf) - tb.asn_len) != ASN_ERR_OK)
  return (SNMP_CODE_FAILED);
 pdu->digest_ptr += ASN_MAXLENLEN;

 if ((pdu->flags & SNMP_MSG_PRIV_FLAG) != 0 && asn_put_temp_header(b,
     ASN_TYPE_OCTETSTRING, &pdu->encrypted_ptr) != ASN_ERR_OK)
   return (SNMP_CODE_FAILED);

 return (SNMP_CODE_OK);
}
