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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_array*,unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ftrace_function_enabled ; 
 struct trace_array* func_trace ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(unsigned long ip, unsigned long parent_ip)
{
	struct trace_array *tr = func_trace;
	struct trace_array_cpu *data;
	unsigned long flags;
	long disabled;
	int cpu;
	int pc;

	if (FUNC9(!ftrace_function_enabled))
		return;

	/*
	 * Need to use raw, since this must be called before the
	 * recursive protection is performed.
	 */
	FUNC5(flags);
	cpu = FUNC7();
	data = tr->data[cpu];
	disabled = FUNC2(&data->disabled);

	if (FUNC3(disabled == 1)) {
		pc = FUNC6();
		FUNC8(tr, ip, parent_ip, flags, pc);
		/*
		 * skip over 5 funcs:
		 *    __ftrace_trace_stack,
		 *    __trace_stack,
		 *    function_stack_trace_call
		 *    ftrace_list_func
		 *    ftrace_call
		 */
		FUNC0(tr, flags, 5, pc);
	}

	FUNC1(&data->disabled);
	FUNC4(flags);
}