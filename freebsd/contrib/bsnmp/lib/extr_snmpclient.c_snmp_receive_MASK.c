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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int dummy; } ;
struct snmp_pdu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snmp_pdu*) ; 
 struct snmp_pdu* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  snmp_client ; 
 int FUNC4 (struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC5 (struct snmp_pdu*) ; 
 int FUNC6 (struct snmp_pdu*,struct timeval*) ; 

int
FUNC7(int blocking)
{
	int ret;

	struct timeval tv;
	struct snmp_pdu * resp;

	FUNC2(&tv, 0, sizeof(tv));

	resp = FUNC1(sizeof(struct snmp_pdu));
	if (resp == NULL) {
		FUNC3(&snmp_client, "no memory for returning PDU");
		return (-1) ;
	}

	if ((ret = FUNC6(resp, blocking ? NULL : &tv)) <= 0) {
		FUNC0(resp);
		return (ret);
	}
	ret = FUNC4(resp);
	FUNC5(resp);
	FUNC0(resp);
	return (ret);
}