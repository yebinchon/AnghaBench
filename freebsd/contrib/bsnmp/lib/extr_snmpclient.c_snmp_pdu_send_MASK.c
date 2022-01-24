#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snmp_pdu {int /*<<< orphan*/  request_id; } ;
struct sent_pdu {int retrycount; int /*<<< orphan*/  timeout_id; void* arg; int /*<<< orphan*/  callback; int /*<<< orphan*/  reqid; int /*<<< orphan*/  time; struct snmp_pdu* pdu; } ;
typedef  int /*<<< orphan*/  snmp_send_cb_f ;
typedef  int int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  (* timeout_start ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sent_pdu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sent_pdu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct sent_pdu*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sent_pdu* FUNC3 (int) ; 
 int /*<<< orphan*/  sent_pdus ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ snmp_client ; 
 int FUNC5 (struct snmp_pdu*) ; 
 int /*<<< orphan*/  snmp_timeout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sent_pdu*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int32_t
FUNC9(struct snmp_pdu *pdu, snmp_send_cb_f func, void *arg)
{
	struct sent_pdu *listentry;
	int32_t id;

	if ((listentry = FUNC3(sizeof(struct sent_pdu))) == NULL) {
		FUNC4(&snmp_client, "%s", FUNC6(errno));
		return (-1);
	}

	/* here we really send */
	if ((id = FUNC5(pdu)) == -1) {
		FUNC1(listentry);
		return (-1);
	}

	/* add entry to list of sent PDUs */
	listentry->pdu = pdu;
	if (FUNC2(&listentry->time, NULL) == -1)
		FUNC8("gettimeofday() failed");

	listentry->reqid = pdu->request_id;
	listentry->callback = func;
	listentry->arg = arg;
	listentry->retrycount=1;
	listentry->timeout_id =
	    snmp_client.timeout_start(&snmp_client.timeout, snmp_timeout,
	    listentry);

	FUNC0(&sent_pdus, listentry, entries);

	return (id);
}