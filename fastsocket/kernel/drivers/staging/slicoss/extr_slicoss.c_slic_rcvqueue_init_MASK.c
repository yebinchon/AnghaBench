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
struct slic_rcvqueue {int size; int /*<<< orphan*/  count; scalar_t__ errors; int /*<<< orphan*/ * head; int /*<<< orphan*/ * tail; } ;
struct adapter {scalar_t__ state; struct slic_rcvqueue rcvqueue; } ;

/* Variables and functions */
 scalar_t__ ADAPT_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SLIC_RCVQ_ENTRIES ; 
 int SLIC_RCVQ_FILLENTRIES ; 
 int /*<<< orphan*/  SLIC_RCVQ_MINENTRIES ; 
 int STATUS_FAILURE ; 
 int STATUS_SUCCESS ; 
 scalar_t__ FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 

__attribute__((used)) static int FUNC3(struct adapter *adapter)
{
	int i, count;
	struct slic_rcvqueue *rcvq = &adapter->rcvqueue;

	FUNC0(adapter->state == ADAPT_DOWN);
	rcvq->tail = NULL;
	rcvq->head = NULL;
	rcvq->size = SLIC_RCVQ_ENTRIES;
	rcvq->errors = 0;
	rcvq->count = 0;
	i = (SLIC_RCVQ_ENTRIES / SLIC_RCVQ_FILLENTRIES);
	count = 0;
	while (i) {
		count += FUNC1(adapter);
		i--;
	}
	if (rcvq->count < SLIC_RCVQ_MINENTRIES) {
		FUNC2(adapter);
		return STATUS_FAILURE;
	}
	return STATUS_SUCCESS;
}