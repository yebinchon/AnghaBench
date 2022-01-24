#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ring_buffer {int dummy; } ;
struct TYPE_4__ {struct ring_buffer* buffer; } ;
struct TYPE_3__ {struct ring_buffer* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ftrace_max_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ global_trace ; 
 TYPE_1__ max_tr ; 
 int /*<<< orphan*/  FUNC3 (struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  trace_stop_count ; 
 int /*<<< orphan*/  tracing_start_lock ; 

void FUNC6(void)
{
	struct ring_buffer *buffer;
	unsigned long flags;

	FUNC2();
	FUNC4(&tracing_start_lock, flags);
	if (trace_stop_count++)
		goto out;

	/* Prevent the buffers from switching */
	FUNC0(&ftrace_max_lock);

	buffer = global_trace.buffer;
	if (buffer)
		FUNC3(buffer);

	buffer = max_tr.buffer;
	if (buffer)
		FUNC3(buffer);

	FUNC1(&ftrace_max_lock);

 out:
	FUNC5(&tracing_start_lock, flags);
}