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
struct TYPE_8__ {long state; int /*<<< orphan*/  comm; int /*<<< orphan*/  flags; TYPE_1__* sighand; } ;
struct TYPE_7__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_FREEZING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

void FUNC12(void)
{
	/* Hmm, should we be allowed to suspend when there are realtime
	   processes around? */
	long save;

	FUNC10(current);
	if (FUNC1(current)) {
		FUNC3();
		FUNC11(current);
	} else {
		FUNC11(current);
		return;
	}
	save = current->state;
	FUNC4("%s entered refrigerator\n", current->comm);

	FUNC8(&current->sighand->siglock);
	FUNC5(); /* We sent fake signal, clean it up */
	FUNC9(&current->sighand->siglock);

	/* prevent accounting of that task to load */
	current->flags |= PF_FREEZING;

	for (;;) {
		FUNC7(TASK_UNINTERRUPTIBLE);
		if (!FUNC2(current))
			break;
		FUNC6();
	}

	/* Remove the accounting blocker */
	current->flags &= ~PF_FREEZING;

	FUNC4("%s left refrigerator\n", current->comm);
	FUNC0(save);
}