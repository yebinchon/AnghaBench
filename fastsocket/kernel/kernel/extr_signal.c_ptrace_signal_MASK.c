#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_8__ {int si_signo; int /*<<< orphan*/  si_uid; int /*<<< orphan*/  si_pid; int /*<<< orphan*/  si_code; scalar_t__ si_errno; } ;
typedef  TYPE_1__ siginfo_t ;
struct TYPE_9__ {int exit_code; int /*<<< orphan*/  blocked; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int PT_PTRACED ; 
 int /*<<< orphan*/  SI_USER ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(int signr, siginfo_t *info,
			 struct pt_regs *regs, void *cookie)
{
	if (!(FUNC5(current) & PT_PTRACED))
		return signr;

	FUNC0(regs, cookie);

	/* Let the debugger run.  */
	FUNC1(signr, 0, info);

	/* We're back.  Did the debugger cancel the sig?  */
	signr = current->exit_code;
	if (signr == 0)
		return signr;

	current->exit_code = 0;

	/* Update the siginfo structure if the signal has
	   changed.  If the debugger wanted something
	   specific in the siginfo structure then it should
	   have updated *info via PTRACE_SETSIGINFO.  */
	if (signr != info->si_signo) {
		info->si_signo = signr;
		info->si_errno = 0;
		info->si_code = SI_USER;
		info->si_pid = FUNC4(current->parent);
		info->si_uid = FUNC6(current->parent);
	}

	/* If the (new) signal is now blocked, requeue it.  */
	if (FUNC2(&current->blocked, signr)) {
		FUNC3(signr, info, current);
		signr = 0;
	}

	return signr;
}