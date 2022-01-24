#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  wq_bar2; int /*<<< orphan*/  wq_queue; int /*<<< orphan*/  wq_ninqueue; int /*<<< orphan*/  wq_bar1; } ;
typedef  TYPE_1__ workqueue_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(workqueue_t *wq)
{
	FUNC6(wq);

	FUNC1(2, "%d: entering first barrier\n", FUNC5());

	if (FUNC0(&wq->wq_bar1)) {

		FUNC1(2, "%d: doing work in first barrier\n", FUNC5());

		FUNC3(wq);

		FUNC4(wq);

		FUNC1(2, "%d: ninqueue is %d, %d on queue\n", FUNC5(),
		    wq->wq_ninqueue, FUNC2(wq->wq_queue));
	}

	FUNC1(2, "%d: entering second barrier\n", FUNC5());

	(void) FUNC0(&wq->wq_bar2);

	FUNC1(2, "%d: phase 1 complete\n", FUNC5());

	FUNC7(wq);
}