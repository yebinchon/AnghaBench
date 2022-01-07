
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_pdu {scalar_t__ version; scalar_t__ security_model; } ;
struct asn_buf {int dummy; } ;
typedef int int32_t ;
typedef enum snmp_code { ____Placeholder_snmp_code } snmp_code ;



 int SNMP_CODE_BADVERS ;

 int SNMP_CODE_OK ;
 scalar_t__ SNMP_SECMODEL_USM ;
 scalar_t__ SNMP_V3 ;
 scalar_t__ SNMP_Verr ;
 int snmp_pdu_decode_header (struct asn_buf*,struct snmp_pdu*) ;
 int snmp_pdu_decode_scoped (struct asn_buf*,struct snmp_pdu*,int *) ;
 int snmp_pdu_decode_secmode (struct asn_buf*,struct snmp_pdu*) ;
 int snmp_pdu_free (struct snmp_pdu*) ;

enum snmp_code
snmp_pdu_decode(struct asn_buf *b, struct snmp_pdu *pdu, int32_t *ip)
{
 enum snmp_code code;

 if ((code = snmp_pdu_decode_header(b, pdu)) != SNMP_CODE_OK)
  return (code);

 if (pdu->version == SNMP_V3) {
  if (pdu->security_model != SNMP_SECMODEL_USM)
   return (128);
  if ((code = snmp_pdu_decode_secmode(b, pdu)) != SNMP_CODE_OK)
   return (code);
 }

 code = snmp_pdu_decode_scoped(b, pdu, ip);

 switch (code) {
   case 128:
  snmp_pdu_free(pdu);
  break;

   case 129:
  if (pdu->version == SNMP_Verr)
   return (SNMP_CODE_BADVERS);

   default:
  break;
 }

 return (code);
}
