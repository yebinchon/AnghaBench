
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_pdu {int error_index; int error_status; int request_id; } ;


 int dump_bindings (struct snmp_pdu const*) ;
 int snmp_printf (char*,int ) ;

__attribute__((used)) static __inline void
dump_notrap(const struct snmp_pdu *pdu)
{
 snmp_printf(" request_id=%d", pdu->request_id);
 snmp_printf(" error_status=%d", pdu->error_status);
 snmp_printf(" error_index=%d\n", pdu->error_index);
 dump_bindings(pdu);
}
