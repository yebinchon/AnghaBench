#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snmp_pdu {int /*<<< orphan*/  error_index; int /*<<< orphan*/  error_status; int /*<<< orphan*/  request_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snmp_pdu const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC2(const struct snmp_pdu *pdu)
{
	FUNC1(" request_id=%d", pdu->request_id);
	FUNC1(" error_status=%d", pdu->error_status);
	FUNC1(" error_index=%d\n", pdu->error_index);
	FUNC0(pdu);
}