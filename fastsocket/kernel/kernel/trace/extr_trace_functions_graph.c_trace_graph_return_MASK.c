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
struct trace_array_cpu {int /*<<< orphan*/  disabled; } ;
struct trace_array {struct trace_array_cpu** data; } ;
struct ftrace_graph_ret {int /*<<< orphan*/  depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_array*,struct ftrace_graph_ret*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 struct trace_array* graph_array ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int FUNC7 () ; 
 int FUNC8 () ; 

void FUNC9(struct ftrace_graph_ret *trace)
{
	struct trace_array *tr = graph_array;
	struct trace_array_cpu *data;
	unsigned long flags;
	long disabled;
	int cpu;
	int pc;

	FUNC6(flags);
	cpu = FUNC8();
	data = tr->data[cpu];
	disabled = FUNC2(&data->disabled);
	if (FUNC4(disabled == 1)) {
		pc = FUNC7();
		FUNC0(tr, trace, flags, pc);
	}
	if (!trace->depth)
		FUNC3(current);
	FUNC1(&data->disabled);
	FUNC5(flags);
}