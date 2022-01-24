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
struct trace_array_cpu {scalar_t__ critical_sequence; unsigned long critical_end; void* preempt_timestamp; } ;
struct trace_array {int dummy; } ;
typedef  void* cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CALLER_ADDR0 ; 
 int /*<<< orphan*/  current ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ max_sequence ; 
 int /*<<< orphan*/  max_trace_lock ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct trace_array*,int /*<<< orphan*/ ,unsigned long,unsigned long,int) ; 
 void* tracing_max_latency ; 
 int /*<<< orphan*/  FUNC9 (struct trace_array*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(struct trace_array *tr,
		      struct trace_array_cpu *data,
		      unsigned long parent_ip,
		      int cpu)
{
	cycle_t T0, T1, delta;
	unsigned long flags;
	int pc;

	T0 = data->preempt_timestamp;
	T1 = FUNC0(cpu);
	delta = T1-T0;

	FUNC3(flags);

	pc = FUNC4();

	if (!FUNC5(delta))
		goto out;

	FUNC6(&max_trace_lock, flags);

	/* check if we are still the max latency */
	if (!FUNC5(delta))
		goto out_unlock;

	FUNC8(tr, CALLER_ADDR0, parent_ip, flags, pc);

	if (data->critical_sequence != max_sequence)
		goto out_unlock;

	data->critical_end = parent_ip;

	if (FUNC2(!FUNC1())) {
		tracing_max_latency = delta;
		FUNC9(tr, current, cpu);
	}

	max_sequence++;

out_unlock:
	FUNC7(&max_trace_lock, flags);

out:
	data->critical_sequence = max_sequence;
	data->preempt_timestamp = FUNC0(cpu);
	FUNC8(tr, CALLER_ADDR0, parent_ip, flags, pc);
}