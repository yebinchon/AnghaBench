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
struct perf_read_values {int threads_max; int counters_max; scalar_t__ counters; void* countername; void* counterrawid; scalar_t__ threads; void* value; void* tid; void* pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int) ; 

void FUNC2(struct perf_read_values *values)
{
	values->threads_max = 16;
	values->pid = FUNC1(values->threads_max * sizeof(*values->pid));
	values->tid = FUNC1(values->threads_max * sizeof(*values->tid));
	values->value = FUNC1(values->threads_max * sizeof(*values->value));
	if (!values->pid || !values->tid || !values->value)
		FUNC0("failed to allocate read_values threads arrays");
	values->threads = 0;

	values->counters_max = 16;
	values->counterrawid = FUNC1(values->counters_max
				      * sizeof(*values->counterrawid));
	values->countername = FUNC1(values->counters_max
				     * sizeof(*values->countername));
	if (!values->counterrawid || !values->countername)
		FUNC0("failed to allocate read_values counters arrays");
	values->counters = 0;
}