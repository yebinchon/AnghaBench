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
struct lbuf {struct lbuf* l_redrive_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct lbuf*) ; 
 struct lbuf* log_redrive_list ; 
 int /*<<< orphan*/  log_redrive_lock ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(void *arg)
{
	struct lbuf *bp;

	do {
		FUNC8(&log_redrive_lock);
		while ((bp = log_redrive_list)) {
			log_redrive_list = bp->l_redrive_next;
			bp->l_redrive_next = NULL;
			FUNC9(&log_redrive_lock);
			FUNC4(bp);
			FUNC8(&log_redrive_lock);
		}

		if (FUNC1(current)) {
			FUNC9(&log_redrive_lock);
			FUNC5();
		} else {
			FUNC7(TASK_INTERRUPTIBLE);
			FUNC9(&log_redrive_lock);
			FUNC6();
			FUNC0(TASK_RUNNING);
		}
	} while (!FUNC3());

	FUNC2("jfsIOWait being killed!");
	return 0;
}