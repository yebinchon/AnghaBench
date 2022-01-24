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
struct table {int dummy; } ;
struct tabwork {int first; int /*<<< orphan*/  pdu; scalar_t__ last_change; void* arg; int /*<<< orphan*/  callback; struct table worklist; struct table* table; scalar_t__ iter; struct snmp_table const* descr; } ;
struct snmp_table {int dummy; } ;
typedef  int /*<<< orphan*/  snmp_table_cb_f ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct table*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct tabwork*) ; 
 struct tabwork* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snmp_client ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tabwork*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  table_cb ; 
 int /*<<< orphan*/  FUNC6 (struct snmp_table const*,int /*<<< orphan*/ *) ; 

int
FUNC7(const struct snmp_table *descr, void *list,
    snmp_table_cb_f func, void *arg)
{
	struct tabwork *work;

	if ((work = FUNC2(sizeof(*work))) == NULL) {
		FUNC3(&snmp_client, "%s", FUNC5(errno));
		return (-1);
	}

	work->descr = descr;
	work->table = (struct table *)list;
	work->iter = 0;
	FUNC0(work->table);
	FUNC0(&work->worklist);

	work->callback = func;
	work->arg = arg;

	/*
	 * Start by sending the first PDU
	 */
	work->first = 1;
	work->last_change = 0;
	FUNC6(descr, &work->pdu);

	if (FUNC4(&work->pdu, table_cb, work) == -1) {
		FUNC1(work);
		work = NULL;
		return (-1);
	}
	return (0);
}