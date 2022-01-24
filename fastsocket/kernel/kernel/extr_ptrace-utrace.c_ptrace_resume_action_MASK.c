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
struct utrace_engine {unsigned long flags; } ;
struct task_struct {int dummy; } ;
struct ptrace_context {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int EIO ; 
 int ESRCH ; 
#define  PTRACE_CONT 133 
 int /*<<< orphan*/  PTRACE_O_SYSEMU ; 
#define  PTRACE_SINGLEBLOCK 132 
#define  PTRACE_SINGLESTEP 131 
#define  PTRACE_SYSCALL 130 
#define  PTRACE_SYSEMU 129 
#define  PTRACE_SYSEMU_SINGLESTEP 128 
 int /*<<< orphan*/  SYSCALL_ENTRY ; 
 int /*<<< orphan*/  SYSCALL_EXIT ; 
 int UTRACE_BLOCKSTEP ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long UTRACE_EVENT_SYSCALL ; 
 int UTRACE_RESUME ; 
 int UTRACE_SINGLESTEP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct ptrace_context* FUNC3 (struct utrace_engine*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct task_struct*,struct utrace_engine*,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct task_struct *tracee,
				struct utrace_engine *engine, long request)
{
	struct ptrace_context *ctx = FUNC3(engine);
	unsigned long events;
	int action;

	ctx->options &= ~PTRACE_O_SYSEMU;
	events = engine->flags & ~UTRACE_EVENT_SYSCALL;
	action = UTRACE_RESUME;

	switch (request) {
#ifdef PTRACE_SINGLEBLOCK
	case PTRACE_SINGLEBLOCK:
		if (FUNC4(!FUNC1()))
			return -EIO;
		action = UTRACE_BLOCKSTEP;
		events |= FUNC0(SYSCALL_EXIT);
		break;
#endif

#ifdef PTRACE_SINGLESTEP
	case PTRACE_SINGLESTEP:
		if (FUNC4(!FUNC2()))
			return -EIO;
		action = UTRACE_SINGLESTEP;
		events |= FUNC0(SYSCALL_EXIT);
		break;
#endif

#ifdef PTRACE_SYSEMU
	case PTRACE_SYSEMU_SINGLESTEP:
		if (FUNC4(!FUNC2()))
			return -EIO;
		action = UTRACE_SINGLESTEP;
	case PTRACE_SYSEMU:
		ctx->options |= PTRACE_O_SYSEMU;
		events |= FUNC0(SYSCALL_ENTRY);
		break;
#endif

	case PTRACE_SYSCALL:
		events |= UTRACE_EVENT_SYSCALL;
		break;

	case PTRACE_CONT:
		break;
	default:
		return -EIO;
	}

	if (events != engine->flags &&
	    FUNC5(tracee, engine, events))
		return -ESRCH;

	return action;
}