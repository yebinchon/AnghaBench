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
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct trace_array* func_trace ; 
 scalar_t__ FUNC4 (int) ; 
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
	int cpu, resched;
	int pc;

	if (FUNC9(!ftrace_function_enabled))
		return;

	pc = FUNC6();
	resched = FUNC2();
	FUNC5(flags);
	cpu = FUNC7();
	data = tr->data[cpu];
	disabled = FUNC1(&data->disabled);

	if (FUNC4(disabled == 1))
		FUNC8(tr, ip, parent_ip, flags, pc);

	FUNC0(&data->disabled);
	FUNC3(resched);
}