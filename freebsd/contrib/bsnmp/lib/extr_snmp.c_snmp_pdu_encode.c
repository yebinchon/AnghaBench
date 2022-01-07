
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct snmp_pdu {size_t nbindings; int * bindings; } ;
struct asn_buf {int dummy; } ;
typedef enum snmp_code { ____Placeholder_snmp_code } snmp_code ;


 scalar_t__ ASN_ERR_OK ;
 int SNMP_CODE_FAILED ;
 int SNMP_CODE_OK ;
 scalar_t__ snmp_binding_encode (struct asn_buf*,int *) ;
 int snmp_fix_encoding (struct asn_buf*,struct snmp_pdu*) ;
 int snmp_pdu_encode_header (struct asn_buf*,struct snmp_pdu*) ;

enum snmp_code
snmp_pdu_encode(struct snmp_pdu *pdu, struct asn_buf *resp_b)
{
 u_int idx;
 enum snmp_code err;

 if ((err = snmp_pdu_encode_header(resp_b, pdu)) != SNMP_CODE_OK)
  return (err);
 for (idx = 0; idx < pdu->nbindings; idx++)
  if (snmp_binding_encode(resp_b, &pdu->bindings[idx])
      != ASN_ERR_OK)
   return (SNMP_CODE_FAILED);

 return (snmp_fix_encoding(resp_b, pdu));
}
