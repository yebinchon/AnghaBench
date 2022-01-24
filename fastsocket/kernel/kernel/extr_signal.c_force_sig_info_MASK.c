#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_3__* sighand; TYPE_2__* signal; int /*<<< orphan*/  blocked; } ;
struct siginfo {int dummy; } ;
struct TYPE_4__ {scalar_t__ sa_handler; } ;
struct k_sigaction {TYPE_1__ sa; } ;
struct TYPE_6__ {int /*<<< orphan*/  siglock; struct k_sigaction* action; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGNAL_UNKILLABLE ; 
 scalar_t__ SIG_DFL ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int,struct siginfo*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC6(int sig, struct siginfo *info, struct task_struct *t)
{
	unsigned long int flags;
	int ret, blocked, ignored;
	struct k_sigaction *action;

	FUNC4(&t->sighand->siglock, flags);
	action = &t->sighand->action[sig-1];
	ignored = action->sa.sa_handler == SIG_IGN;
	blocked = FUNC2(&t->blocked, sig);
	if (blocked || ignored) {
		action->sa.sa_handler = SIG_DFL;
		if (blocked) {
			FUNC1(&t->blocked, sig);
			FUNC0(t);
		}
	}
	if (action->sa.sa_handler == SIG_DFL)
		t->signal->flags &= ~SIGNAL_UNKILLABLE;
	ret = FUNC3(sig, info, t);
	FUNC5(&t->sighand->siglock, flags);

	return ret;
}