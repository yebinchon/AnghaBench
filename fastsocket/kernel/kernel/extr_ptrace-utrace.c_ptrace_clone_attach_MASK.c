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
struct TYPE_2__ {int /*<<< orphan*/  signal; } ;
struct task_struct {int flags; TYPE_1__ pending; scalar_t__ ptrace; struct task_struct* parent; } ;

/* Variables and functions */
 int PF_EXITING ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  TIF_SIGPENDING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct task_struct*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int FUNC3 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct task_struct *child,
				int options)
{
	struct task_struct *parent = current;
	struct task_struct *tracer;
	bool abort = true;

	if (FUNC6(FUNC3(child, options))) {
		FUNC0(1);
		return;
	}

	FUNC7(&tasklist_lock);
	tracer = parent->parent;
	if (!(tracer->flags & PF_EXITING) && parent->ptrace) {
		child->ptrace = parent->ptrace;
		FUNC1(child, tracer);
		abort = false;
	}
	FUNC8(&tasklist_lock);
	if (FUNC6(abort)) {
		FUNC2(child);
		return;
	}

	FUNC5(&child->pending.signal, SIGSTOP);
	FUNC4(child, TIF_SIGPENDING);
}