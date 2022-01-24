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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ftrace_function_enabled ; 
 struct trace_array* func_trace ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(unsigned long ip, unsigned long parent_ip)
{
	struct trace_array *tr = func_trace;
	struct trace_array_cpu *data;
	unsigned long flags;
	long disabled;
	int cpu;
	int pc;

	if (FUNC8(!ftrace_function_enabled))
		return;

	/*
	 * Need to use raw, since this must be called before the
	 * recursive protection is performed.
	 */
	FUNC4(flags);
	cpu = FUNC6();
	data = tr->data[cpu];
	disabled = FUNC1(&data->disabled);

	if (FUNC2(disabled == 1)) {
		pc = FUNC5();
		FUNC7(tr, ip, parent_ip, flags, pc);
	}

	FUNC0(&data->disabled);
	FUNC3(flags);
}