#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int wq_maxbatchsz; int wq_nwipslots; int wq_nthreads; int wq_ithrottle; int wq_ninqueue; int wq_lastdonebatch; scalar_t__ wq_nomorefiles; int /*<<< orphan*/  wq_bar2; int /*<<< orphan*/  wq_bar1; scalar_t__ wq_alldone; int /*<<< orphan*/  wq_alldone_cv; int /*<<< orphan*/  wq_done_cv; void* wq_donequeue; int /*<<< orphan*/  wq_donequeue_lock; scalar_t__ wq_nextpownum; int /*<<< orphan*/  wq_work_removed; int /*<<< orphan*/  wq_work_avail; void* wq_queue; int /*<<< orphan*/  wq_queue_lock; scalar_t__ wq_next_batchid; TYPE_2__* wq_wip; int /*<<< orphan*/  wq_thread; } ;
typedef  TYPE_1__ workqueue_t ;
typedef  int /*<<< orphan*/  wip_t ;
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_5__ {scalar_t__ wip_batchid; int /*<<< orphan*/  wip_lock; } ;

/* Variables and functions */
 int MERGE_INPUT_THROTTLE_LEN ; 
 int MERGE_PHASE1_BATCH_SIZE ; 
 int MERGE_PHASE1_MAX_SLOTS ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int) ; 
 void* FUNC4 () ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(workqueue_t *wq, int nfiles)
{
	int throttle, nslots, i;

	if (FUNC5("CTFMERGE_MAX_SLOTS"))
		nslots = FUNC1(FUNC5("CTFMERGE_MAX_SLOTS"));
	else
		nslots = MERGE_PHASE1_MAX_SLOTS;

	if (FUNC5("CTFMERGE_PHASE1_BATCH_SIZE"))
		wq->wq_maxbatchsz = FUNC1(FUNC5("CTFMERGE_PHASE1_BATCH_SIZE"));
	else
		wq->wq_maxbatchsz = MERGE_PHASE1_BATCH_SIZE;

	nslots = FUNC0(nslots, (nfiles + wq->wq_maxbatchsz - 1) /
	    wq->wq_maxbatchsz);

	wq->wq_wip = FUNC9(sizeof (wip_t) * nslots);
	wq->wq_nwipslots = nslots;
	wq->wq_nthreads = FUNC0(FUNC8(_SC_NPROCESSORS_ONLN) * 3 / 2, nslots);
	wq->wq_thread = FUNC10(sizeof (pthread_t) * wq->wq_nthreads);

	if (FUNC5("CTFMERGE_INPUT_THROTTLE"))
		throttle = FUNC1(FUNC5("CTFMERGE_INPUT_THROTTLE"));
	else
		throttle = MERGE_INPUT_THROTTLE_LEN;
	wq->wq_ithrottle = throttle * wq->wq_nthreads;

	FUNC3(1, "Using %d slots, %d threads\n", wq->wq_nwipslots,
	    wq->wq_nthreads);

	wq->wq_next_batchid = 0;

	for (i = 0; i < nslots; i++) {
		FUNC7(&wq->wq_wip[i].wip_lock, NULL);
		wq->wq_wip[i].wip_batchid = wq->wq_next_batchid++;
	}

	FUNC7(&wq->wq_queue_lock, NULL);
	wq->wq_queue = FUNC4();
	FUNC6(&wq->wq_work_avail, NULL);
	FUNC6(&wq->wq_work_removed, NULL);
	wq->wq_ninqueue = nfiles;
	wq->wq_nextpownum = 0;

	FUNC7(&wq->wq_donequeue_lock, NULL);
	wq->wq_donequeue = FUNC4();
	wq->wq_lastdonebatch = -1;

	FUNC6(&wq->wq_done_cv, NULL);

	FUNC6(&wq->wq_alldone_cv, NULL);
	wq->wq_alldone = 0;

	FUNC2(&wq->wq_bar1, wq->wq_nthreads);
	FUNC2(&wq->wq_bar2, wq->wq_nthreads);

	wq->wq_nomorefiles = 0;
}