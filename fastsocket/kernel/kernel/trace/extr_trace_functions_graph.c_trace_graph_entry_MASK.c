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
struct ftrace_graph_ent {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int FUNC0 (struct trace_array*,struct ftrace_graph_ent*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct trace_array* graph_array ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct ftrace_graph_ent *trace)
{
	struct trace_array *tr = graph_array;
	struct trace_array_cpu *data;
	unsigned long flags;
	long disabled;
	int ret;
	int cpu;
	int pc;

	if (FUNC12(!tr))
		return 0;

	if (!FUNC4(current))
		return 0;

	if (!FUNC3(trace->func))
		return 0;

	FUNC7(flags);
	cpu = FUNC9();
	data = tr->data[cpu];
	disabled = FUNC2(&data->disabled);
	if (FUNC5(disabled == 1)) {
		pc = FUNC8();
		ret = FUNC0(tr, trace, flags, pc);
	} else {
		ret = 0;
	}
	/* Only do the atomic if it is not already set */
	if (!FUNC11(current))
		FUNC10(current);

	FUNC1(&data->disabled);
	FUNC6(flags);

	return ret;
}