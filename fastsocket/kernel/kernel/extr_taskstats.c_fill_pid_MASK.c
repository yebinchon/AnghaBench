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
struct taskstats {int /*<<< orphan*/  nivcsw; int /*<<< orphan*/  nvcsw; int /*<<< orphan*/  version; } ;
struct task_struct {int /*<<< orphan*/  nivcsw; int /*<<< orphan*/  nvcsw; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  TASKSTATS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct taskstats*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct taskstats*,struct task_struct*) ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct taskstats*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct taskstats*,struct task_struct*) ; 

__attribute__((used)) static int FUNC9(pid_t pid, struct task_struct *tsk,
		struct taskstats *stats)
{
	int rc = 0;

	if (!tsk) {
		FUNC6();
		tsk = FUNC2(pid);
		if (tsk)
			FUNC3(tsk);
		FUNC7();
		if (!tsk)
			return -ESRCH;
	} else
		FUNC3(tsk);

	FUNC4(stats, 0, sizeof(*stats));
	/*
	 * Each accounting subsystem adds calls to its functions to
	 * fill in relevant parts of struct taskstsats as follows
	 *
	 *	per-task-foo(stats, tsk);
	 */

	FUNC1(stats, tsk);

	/* fill in basic acct fields */
	stats->version = TASKSTATS_VERSION;
	stats->nvcsw = tsk->nvcsw;
	stats->nivcsw = tsk->nivcsw;
	FUNC0(stats, tsk);

	/* fill in extended acct fields */
	FUNC8(stats, tsk);

	/* Define err: label here if needed */
	FUNC5(tsk);
	return rc;

}