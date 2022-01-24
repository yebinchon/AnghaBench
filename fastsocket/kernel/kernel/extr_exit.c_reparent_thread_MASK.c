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
struct task_struct {scalar_t__ exit_state; int /*<<< orphan*/  sibling; int /*<<< orphan*/  exit_signal; TYPE_1__* real_parent; scalar_t__ pdeath_signal; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head children; } ;

/* Variables and functions */
 scalar_t__ EXIT_DEAD ; 
 scalar_t__ EXIT_ZOMBIE ; 
 int /*<<< orphan*/  SEND_SIG_NOINFO ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,struct task_struct*) ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 scalar_t__ FUNC7 (struct task_struct*) ; 

__attribute__((used)) static void FUNC8(struct task_struct *father, struct task_struct *p,
				struct list_head *dead)
{
	if (p->pdeath_signal)
		FUNC1(p->pdeath_signal, SEND_SIG_NOINFO, p);

	FUNC3(&p->sibling, &p->real_parent->children);

	if (FUNC5(p))
		return;
	/*
	 * If this is a threaded reparent there is no need to
	 * notify anyone anything has happened.
	 */
	if (FUNC4(p->real_parent, father))
		return;

	/* We don't want people slaying init.  */
	p->exit_signal = SIGCHLD;

	/* If it has exited notify the new parent about this child's death. */
	if (!FUNC6(p) &&
	    p->exit_state == EXIT_ZOMBIE && FUNC7(p)) {
		FUNC0(p, p->exit_signal);
		if (FUNC5(p)) {
			p->exit_state = EXIT_DEAD;
			FUNC3(&p->sibling, dead);
		}
	}

	FUNC2(p, father);
}