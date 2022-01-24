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
struct syscall_metadata {char* name; } ;
struct ftrace_event_call {scalar_t__ data; } ;

/* Variables and functions */
 int ENOSYS ; 
 int NR_syscalls ; 
 int /*<<< orphan*/  enabled_exit_syscalls ; 
 int /*<<< orphan*/  ftrace_syscall_exit ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sys_refcount_exit ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  syscall_trace_lock ; 

int FUNC5(struct ftrace_event_call *call)
{
	int ret = 0;
	int num;
	const char *name;

	name = ((struct syscall_metadata *)call->data)->name;
	num = FUNC4(name);
	if (num < 0 || num >= NR_syscalls)
		return -ENOSYS;
	FUNC0(&syscall_trace_lock);
	if (!sys_refcount_exit)
		ret = FUNC2(ftrace_syscall_exit);
	if (!ret) {
		FUNC3(num, enabled_exit_syscalls);
		sys_refcount_exit++;
	}
	FUNC1(&syscall_trace_lock);
	return ret;
}