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
struct trace_array_cpu {int dummy; } ;
struct trace_array {struct trace_array_cpu** data; } ;
struct mmiotrace_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_array*,struct trace_array_cpu*,struct mmiotrace_map*) ; 
 struct trace_array* mmio_trace_array ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t FUNC3 () ; 

void FUNC4(struct mmiotrace_map *map)
{
	struct trace_array *tr = mmio_trace_array;
	struct trace_array_cpu *data;

	FUNC1();
	data = tr->data[FUNC3()];
	FUNC0(tr, data, map);
	FUNC2();
}