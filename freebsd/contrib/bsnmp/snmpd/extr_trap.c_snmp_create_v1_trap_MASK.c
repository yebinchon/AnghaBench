#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snmp_pdu {scalar_t__ nbindings; scalar_t__ time_stamp; scalar_t__ specific_trap; scalar_t__ generic_trap; int /*<<< orphan*/  agent_addr; int /*<<< orphan*/  enterprise; int /*<<< orphan*/  type; int /*<<< orphan*/  version; int /*<<< orphan*/  community; } ;
struct asn_oid {int len; scalar_t__* subs; } ;
struct TYPE_4__ {int /*<<< orphan*/  trap1addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  object_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNMP_PDU_TRAP ; 
 int /*<<< orphan*/  SNMP_V1 ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snmp_pdu*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ snmpd ; 
 scalar_t__ start_tick ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__ systemg ; 

__attribute__((used)) static void
FUNC4(struct snmp_pdu *pdu, char *com,
    const struct asn_oid *trap_oid)
{
	FUNC2(pdu, 0, sizeof(*pdu));
	FUNC3(pdu->community, com, sizeof(pdu->community));

	pdu->version = SNMP_V1;
	pdu->type = SNMP_PDU_TRAP;
	pdu->enterprise = systemg.object_id;
	FUNC1(pdu->agent_addr, snmpd.trap1addr, 4);
	pdu->generic_trap = trap_oid->subs[trap_oid->len - 1] - 1;
	pdu->specific_trap = 0;
	pdu->time_stamp = FUNC0() - start_tick;
	pdu->nbindings = 0;
}