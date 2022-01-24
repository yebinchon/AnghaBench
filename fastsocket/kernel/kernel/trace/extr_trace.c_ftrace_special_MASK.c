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
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ; 
 struct trace_array global_trace ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 scalar_t__ tracing_disabled ; 

void
FUNC8(unsigned long arg1, unsigned long arg2, unsigned long arg3)
{
	struct trace_array *tr = &global_trace;
	struct trace_array_cpu *data;
	unsigned long flags;
	int cpu;
	int pc;

	if (tracing_disabled)
		return;

	pc = FUNC6();
	FUNC5(flags);
	cpu = FUNC7();
	data = tr->data[cpu];

	if (FUNC3(FUNC1(&data->disabled) == 1))
		FUNC2(tr, arg1, arg2, arg3, pc);

	FUNC0(&data->disabled);
	FUNC4(flags);
}