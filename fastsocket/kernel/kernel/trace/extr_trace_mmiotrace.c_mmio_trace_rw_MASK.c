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
struct mmiotrace_rw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_array*,struct trace_array_cpu*,struct mmiotrace_rw*) ; 
 struct trace_array* mmio_trace_array ; 
 size_t FUNC1 () ; 

void FUNC2(struct mmiotrace_rw *rw)
{
	struct trace_array *tr = mmio_trace_array;
	struct trace_array_cpu *data = tr->data[FUNC1()];
	FUNC0(tr, data, rw);
}