
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct snmp_pdu {size_t nbindings; int * bindings; } ;


 int dump_binding (int *) ;
 int snmp_printf (char*,...) ;

__attribute__((used)) static __inline void
dump_bindings(const struct snmp_pdu *pdu)
{
 u_int i;

 for (i = 0; i < pdu->nbindings; i++) {
  snmp_printf(" [%u]: ", i);
  dump_binding(&pdu->bindings[i]);
  snmp_printf("\n");
 }
}
