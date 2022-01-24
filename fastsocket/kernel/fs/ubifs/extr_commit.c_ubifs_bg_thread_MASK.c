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
struct ubifs_info {int /*<<< orphan*/  bgt_name; scalar_t__ need_bgt; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*,int) ; 

int FUNC11(void *info)
{
	int err;
	struct ubifs_info *c = info;

	FUNC2("background thread \"%s\" started, PID %d",
		c->bgt_name, current->pid);
	FUNC7();

	while (1) {
		if (FUNC3())
			break;

		if (FUNC8())
			continue;

		FUNC6(TASK_INTERRUPTIBLE);
		/* Check if there is something to do */
		if (!c->need_bgt) {
			/*
			 * Nothing prevents us from going sleep now and
			 * be never woken up and block the task which
			 * could wait in 'kthread_stop()' forever.
			 */
			if (FUNC3())
				break;
			FUNC5();
			continue;
		} else
			FUNC0(TASK_RUNNING);

		c->need_bgt = 0;
		err = FUNC9(c);
		if (err)
			FUNC10(c, err);

		FUNC4(c);
		FUNC1();
	}

	FUNC2("background thread \"%s\" stops", c->bgt_name);
	return 0;
}