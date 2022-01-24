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
struct task_struct {long exit_code; } ;

/* Variables and functions */
 int EIO ; 
 long PTRACE_SYSCALL ; 
 long PTRACE_SYSEMU ; 
 long PTRACE_SYSEMU_SINGLESTEP ; 
 int /*<<< orphan*/  TIF_SYSCALL_EMU ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (long) ; 
 scalar_t__ FUNC4 (long) ; 
 scalar_t__ FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (long) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 

__attribute__((used)) static int FUNC13(struct task_struct *child, long request, long data)
{
	if (!FUNC11(data))
		return -EIO;

	if (request == PTRACE_SYSCALL)
		FUNC6(child, TIF_SYSCALL_TRACE);
	else
		FUNC2(child, TIF_SYSCALL_TRACE);

#ifdef TIF_SYSCALL_EMU
	if (request == PTRACE_SYSEMU || request == PTRACE_SYSEMU_SINGLESTEP)
		set_tsk_thread_flag(child, TIF_SYSCALL_EMU);
	else
		clear_tsk_thread_flag(child, TIF_SYSCALL_EMU);
#endif

	if (FUNC3(request)) {
		if (FUNC7(!FUNC0()))
			return -EIO;
		FUNC9(child);
	} else if (FUNC4(request) || FUNC5(request)) {
		if (FUNC7(!FUNC1()))
			return -EIO;
		FUNC10(child);
	} else {
		FUNC8(child);
	}

	child->exit_code = data;
	FUNC12(child);

	return 0;
}