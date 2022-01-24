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
struct perf_read_values {int threads_max; void* value; void* tid; void* pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (void*,int) ; 

__attribute__((used)) static void FUNC2(struct perf_read_values *values)
{
	values->threads_max *= 2;
	values->pid = FUNC1(values->pid,
			      values->threads_max * sizeof(*values->pid));
	values->tid = FUNC1(values->tid,
			      values->threads_max * sizeof(*values->tid));
	values->value = FUNC1(values->value,
				values->threads_max * sizeof(*values->value));
	if (!values->pid || !values->tid || !values->value)
		FUNC0("failed to enlarge read_values threads arrays");
}