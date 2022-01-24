#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int wq_nomorefiles; int wq_nwipslots; scalar_t__ wq_maxbatchsz; int /*<<< orphan*/  wq_queue_lock; TYPE_2__* wq_wip; int /*<<< orphan*/  wq_work_removed; int /*<<< orphan*/  wq_nextpownum; int /*<<< orphan*/  wq_queue; int /*<<< orphan*/  wq_work_avail; } ;
typedef  TYPE_1__ workqueue_t ;
struct TYPE_8__ {scalar_t__ wip_nmerged; int /*<<< orphan*/  wip_lock; } ;
typedef  TYPE_2__ wip_t ;
typedef  int /*<<< orphan*/  tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC9(workqueue_t *wq)
{
	wip_t *wipslot;
	tdata_t *pow;
	int wipslotnum, pownum;

	for (;;) {
		FUNC5(&wq->wq_queue_lock);

		while (FUNC1(wq->wq_queue)) {
			if (wq->wq_nomorefiles == 1) {
				FUNC3(&wq->wq_work_avail);
				FUNC6(&wq->wq_queue_lock);

				/* on to phase 2 ... */
				return;
			}

			FUNC4(&wq->wq_work_avail,
			    &wq->wq_queue_lock);
		}

		/* there's work to be done! */
		pow = FUNC2(wq->wq_queue);
		pownum = wq->wq_nextpownum++;
		FUNC3(&wq->wq_work_removed);

		FUNC0(pow != NULL);

		/* merge it into the right slot */
		wipslotnum = pownum % wq->wq_nwipslots;
		wipslot = &wq->wq_wip[wipslotnum];

		FUNC5(&wipslot->wip_lock);

		FUNC6(&wq->wq_queue_lock);

		FUNC7(wipslot, pow);

		if (wipslot->wip_nmerged == wq->wq_maxbatchsz)
			FUNC8(wq, wipslot, wipslotnum);

		FUNC6(&wipslot->wip_lock);
	}
}