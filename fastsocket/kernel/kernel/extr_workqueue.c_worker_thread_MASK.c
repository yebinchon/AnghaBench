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
struct cpu_workqueue_struct {int /*<<< orphan*/  more_work; int /*<<< orphan*/  worklist; TYPE_1__* wq; } ;
struct TYPE_2__ {scalar_t__ freezeable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cpu_workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC10(void *__cwq)
{
	struct cpu_workqueue_struct *cwq = __cwq;
	FUNC0(wait);

	if (cwq->wq->freezeable)
		FUNC8();

	for (;;) {
		FUNC5(&cwq->more_work, &wait, TASK_INTERRUPTIBLE);
		if (!FUNC2(current) &&
		    !FUNC3() &&
		    FUNC4(&cwq->worklist))
			FUNC7();
		FUNC1(&cwq->more_work, &wait);

		FUNC9();

		if (FUNC3())
			break;

		FUNC6(cwq);
	}

	return 0;
}