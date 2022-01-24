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
struct TYPE_2__ {char* wq_ithrottle; int /*<<< orphan*/  wq_queue_lock; int /*<<< orphan*/  wq_work_avail; int /*<<< orphan*/  wq_queue; int /*<<< orphan*/  wq_work_removed; } ;
typedef  TYPE_1__ workqueue_t ;
typedef  int /*<<< orphan*/  tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 () ; 

__attribute__((used)) static int
FUNC8(tdata_t *td, char *name, void *arg)
{
	workqueue_t *wq = arg;

	FUNC0(3, "Adding tdata %p for processing\n", (void *)td);

	FUNC5(&wq->wq_queue_lock);
	while (FUNC2(wq->wq_queue) > wq->wq_ithrottle) {
		FUNC0(2, "Throttling input (len = %d, throttle = %d)\n",
		    FUNC2(wq->wq_queue), wq->wq_ithrottle);
		FUNC4(&wq->wq_work_removed, &wq->wq_queue_lock);
	}

	FUNC1(wq->wq_queue, td);
	FUNC0(1, "Thread %d announcing %s\n", FUNC7(), name);
	FUNC3(&wq->wq_work_avail);
	FUNC6(&wq->wq_queue_lock);

	return (1);
}