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
struct task_struct {TYPE_3__* sighand; int /*<<< orphan*/  pending; TYPE_2__* signal; } ;
struct TYPE_4__ {int /*<<< orphan*/  sa_mask; } ;
struct k_sigaction {TYPE_1__ sa; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_6__ {int /*<<< orphan*/  siglock; struct k_sigaction* action; } ;
struct TYPE_5__ {int /*<<< orphan*/  shared_pending; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGSTOP ; 
 struct task_struct* current ; 
 struct task_struct* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int FUNC12(int sig, struct k_sigaction *act, struct k_sigaction *oact)
{
	struct task_struct *t = current;
	struct k_sigaction *k;
	sigset_t mask;

	if (!FUNC11(sig) || sig < 1 || (act && FUNC4(sig)))
		return -EINVAL;

	k = &t->sighand->action[sig-1];

	FUNC9(&current->sighand->siglock);
	if (oact)
		*oact = *k;

	if (act) {
		FUNC6(&act->sa.sa_mask,
			      FUNC8(SIGKILL) | FUNC8(SIGSTOP));
		*k = *act;
		/*
		 * POSIX 3.3.1.3:
		 *  "Setting a signal action to SIG_IGN for a signal that is
		 *   pending shall cause the pending signal to be discarded,
		 *   whether or not it is blocked."
		 *
		 *  "Setting a signal action to SIG_DFL for a signal that is
		 *   pending and whose default action is to ignore the signal
		 *   (for example, SIGCHLD), shall cause the pending signal to
		 *   be discarded, whether or not it is blocked"
		 */
		if (FUNC3(FUNC2(t, sig), sig)) {
			FUNC7(&mask);
			FUNC5(&mask, sig);
			FUNC1(&mask, &t->signal->shared_pending);
			do {
				FUNC1(&mask, &t->pending);
				t = FUNC0(t);
			} while (t != current);
		}
	}

	FUNC10(&current->sighand->siglock);
	return 0;
}