#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ wq_lastdonebatch; int wq_nwipslots; int /*<<< orphan*/  wq_donequeue_lock; int /*<<< orphan*/  wq_next_batchid; TYPE_1__* wq_wip; int /*<<< orphan*/  wq_donequeue; } ;
typedef  TYPE_2__ workqueue_t ;
struct TYPE_8__ {scalar_t__ wip_batchid; int /*<<< orphan*/ * wip_td; int /*<<< orphan*/  wip_cv; } ;
typedef  TYPE_3__ wip_t ;
struct TYPE_6__ {int /*<<< orphan*/  wip_cv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(workqueue_t *wq, wip_t *slot, int slotnum)
{
	FUNC4(&wq->wq_donequeue_lock);

	while (wq->wq_lastdonebatch + 1 < slot->wip_batchid)
		FUNC3(&slot->wip_cv, &wq->wq_donequeue_lock);
	FUNC0(wq->wq_lastdonebatch + 1 == slot->wip_batchid);

	FUNC1(wq->wq_donequeue, slot->wip_td);
	wq->wq_lastdonebatch++;
	FUNC2(&wq->wq_wip[(slotnum + 1) %
	    wq->wq_nwipslots].wip_cv);

	/* reset the slot for next use */
	slot->wip_td = NULL;
	slot->wip_batchid = wq->wq_next_batchid++;

	FUNC5(&wq->wq_donequeue_lock);
}