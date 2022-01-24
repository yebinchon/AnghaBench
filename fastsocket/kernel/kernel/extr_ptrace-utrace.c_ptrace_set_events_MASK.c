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
struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;
struct ptrace_context {unsigned long options; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE ; 
 int /*<<< orphan*/  EXEC ; 
 int /*<<< orphan*/  EXIT ; 
 unsigned long PTRACE_O_TRACEEXIT ; 
 int /*<<< orphan*/  QUIESCE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long UTRACE_EVENT_SIGNAL_ALL ; 
 struct ptrace_context* FUNC1 (struct utrace_engine*) ; 
 int FUNC2 (struct task_struct*,struct utrace_engine*,unsigned long) ; 

__attribute__((used)) static inline int FUNC3(struct task_struct *target,
					struct utrace_engine *engine,
					unsigned long options)
{
	struct ptrace_context *ctx = FUNC1(engine);
	/*
	 * We need QUIESCE for resume handling, CLONE to check
	 * for CLONE_PTRACE, other events are always reported.
	 */
	unsigned long events = FUNC0(QUIESCE) | FUNC0(CLONE) |
			       FUNC0(EXEC) | UTRACE_EVENT_SIGNAL_ALL;

	ctx->options = options;
	if (options & PTRACE_O_TRACEEXIT)
		events |= FUNC0(EXIT);

	return FUNC2(target, engine, events);
}