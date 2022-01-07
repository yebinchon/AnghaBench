
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snmp_pdu {int nbindings; TYPE_2__* bindings; int error_status; scalar_t__ error_index; int request_id; int type; int version; int community; } ;
struct asn_oid {int dummy; } ;
struct TYPE_7__ {int len; scalar_t__* subs; } ;
struct TYPE_5__ {struct asn_oid oid; scalar_t__ uint32; } ;
struct TYPE_6__ {TYPE_1__ v; int syntax; TYPE_3__ var; } ;


 int SNMP_ERR_NOERROR ;
 int SNMP_PDU_TRAP2 ;
 int SNMP_SYNTAX_OID ;
 int SNMP_SYNTAX_TIMETICKS ;
 int SNMP_V2c ;
 scalar_t__ get_ticks () ;
 int memset (struct snmp_pdu*,int ,int) ;
 TYPE_3__ oid_snmpTrapOID ;
 TYPE_3__ oid_sysUpTime ;
 int reqid_next (int ) ;
 scalar_t__ start_tick ;
 int strlcpy (int ,char*,int) ;
 int trap_reqid ;

__attribute__((used)) static void
snmp_create_v2_trap(struct snmp_pdu *pdu, char *com,
    const struct asn_oid *trap_oid)
{
 memset(pdu, 0, sizeof(*pdu));
 strlcpy(pdu->community, com, sizeof(pdu->community));

 pdu->version = SNMP_V2c;
 pdu->type = SNMP_PDU_TRAP2;
 pdu->request_id = reqid_next(trap_reqid);
 pdu->error_index = 0;
 pdu->error_status = SNMP_ERR_NOERROR;

 pdu->bindings[0].var = oid_sysUpTime;
 pdu->bindings[0].var.subs[pdu->bindings[0].var.len++] = 0;
 pdu->bindings[0].syntax = SNMP_SYNTAX_TIMETICKS;
 pdu->bindings[0].v.uint32 = get_ticks() - start_tick;

 pdu->bindings[1].var = oid_snmpTrapOID;
 pdu->bindings[1].var.subs[pdu->bindings[1].var.len++] = 0;
 pdu->bindings[1].syntax = SNMP_SYNTAX_OID;
 pdu->bindings[1].v.oid = *trap_oid;

 pdu->nbindings = 2;
}
