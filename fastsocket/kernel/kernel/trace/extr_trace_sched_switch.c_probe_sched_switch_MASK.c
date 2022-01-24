#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct trace_array_cpu {int /*<<< orphan*/  disabled; } ;
struct task_struct {int dummy; } ;
struct rq {int dummy; } ;
struct TYPE_3__ {struct trace_array_cpu** data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ctx_trace ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  sched_ref ; 
 scalar_t__ sched_stopped ; 
 int /*<<< orphan*/  tracer_enabled ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct task_struct*,struct task_struct*,unsigned long,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct rq *__rq, struct task_struct *prev,
			struct task_struct *next)
{
	struct trace_array_cpu *data;
	unsigned long flags;
	int cpu;
	int pc;

	if (FUNC8(!sched_ref))
		return;

	FUNC6(prev);
	FUNC6(next);

	if (!tracer_enabled || sched_stopped)
		return;

	pc = FUNC4();
	FUNC3(flags);
	cpu = FUNC5();
	data = ctx_trace->data[cpu];

	if (FUNC1(!FUNC0(&data->disabled)))
		FUNC7(ctx_trace, prev, next, flags, pc);

	FUNC2(flags);
}