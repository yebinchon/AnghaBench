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
struct dlm_ls {int /*<<< orphan*/  ls_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSFL_WORK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 struct dlm_ls* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,void*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(void *arg)
{
	struct dlm_ls *ls;

	ls = FUNC0(arg);
	if (!ls) {
		FUNC4("dlm_recoverd: no lockspace %p", arg);
		return -1;
	}

	while (!FUNC3()) {
		FUNC6(TASK_INTERRUPTIBLE);
		if (!FUNC8(LSFL_WORK, &ls->ls_flags))
			FUNC5();
		FUNC6(TASK_RUNNING);

		if (FUNC7(LSFL_WORK, &ls->ls_flags))
			FUNC2(ls);
	}

	FUNC1(ls);
	return 0;
}