
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ priv_proto; } ;
struct snmp_pdu {TYPE_1__ user; } ;
typedef enum snmp_code { ____Placeholder_snmp_code } snmp_code ;


 int SNMP_CODE_BADSECLEVEL ;
 int SNMP_CODE_OK ;
 scalar_t__ SNMP_PRIV_NOPRIV ;

enum snmp_code
snmp_pdu_encrypt(const struct snmp_pdu *pdu)
{
 if (pdu->user.priv_proto != SNMP_PRIV_NOPRIV)
  return (SNMP_CODE_BADSECLEVEL);

 return (SNMP_CODE_OK);
}
