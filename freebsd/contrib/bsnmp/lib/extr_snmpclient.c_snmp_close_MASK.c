#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sent_pdu {int /*<<< orphan*/ * timeout_id; } ;
struct TYPE_2__ {int fd; char* local_path; struct sent_pdu* cport; struct sent_pdu* chost; int /*<<< orphan*/  (* timeout_stop ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sent_pdu* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sent_pdu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC4 (struct sent_pdu*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  sent_pdus ; 
 TYPE_1__ snmp_client ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(void)
{
	struct sent_pdu *p1;

	if (snmp_client.fd != -1) {
		(void)FUNC3(snmp_client.fd);
		snmp_client.fd = -1;
		if (snmp_client.local_path[0] != '\0')
			(void)FUNC5(snmp_client.local_path);
	}
	while(!FUNC0(&sent_pdus)){
		p1 = FUNC1(&sent_pdus);
		if (p1->timeout_id != NULL)
			snmp_client.timeout_stop(p1->timeout_id);
		FUNC2(p1, entries);
		FUNC4(p1);
	}
	FUNC4(snmp_client.chost);
	FUNC4(snmp_client.cport);
}