
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct snmp_pdu {size_t nbindings; int * bindings; } ;


 int snmp_value_free (int *) ;

void
snmp_pdu_free(struct snmp_pdu *pdu)
{
 u_int i;

 for (i = 0; i < pdu->nbindings; i++)
  snmp_value_free(&pdu->bindings[i]);
 pdu->nbindings = 0;
}
