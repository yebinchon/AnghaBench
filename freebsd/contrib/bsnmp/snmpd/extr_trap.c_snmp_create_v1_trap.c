
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snmp_pdu {scalar_t__ nbindings; scalar_t__ time_stamp; scalar_t__ specific_trap; scalar_t__ generic_trap; int agent_addr; int enterprise; int type; int version; int community; } ;
struct asn_oid {int len; scalar_t__* subs; } ;
struct TYPE_4__ {int trap1addr; } ;
struct TYPE_3__ {int object_id; } ;


 int SNMP_PDU_TRAP ;
 int SNMP_V1 ;
 scalar_t__ get_ticks () ;
 int memcpy (int ,int ,int) ;
 int memset (struct snmp_pdu*,int ,int) ;
 TYPE_2__ snmpd ;
 scalar_t__ start_tick ;
 int strlcpy (int ,char*,int) ;
 TYPE_1__ systemg ;

__attribute__((used)) static void
snmp_create_v1_trap(struct snmp_pdu *pdu, char *com,
    const struct asn_oid *trap_oid)
{
 memset(pdu, 0, sizeof(*pdu));
 strlcpy(pdu->community, com, sizeof(pdu->community));

 pdu->version = SNMP_V1;
 pdu->type = SNMP_PDU_TRAP;
 pdu->enterprise = systemg.object_id;
 memcpy(pdu->agent_addr, snmpd.trap1addr, 4);
 pdu->generic_trap = trap_oid->subs[trap_oid->len - 1] - 1;
 pdu->specific_trap = 0;
 pdu->time_stamp = get_ticks() - start_tick;
 pdu->nbindings = 0;
}
