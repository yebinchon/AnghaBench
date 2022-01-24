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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ring_buffer_expanded ; 
 int /*<<< orphan*/  trace_buf_size ; 
 int /*<<< orphan*/  trace_types_lock ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(void)
{
	int ret = 0;

	FUNC0(&trace_types_lock);
	if (!ring_buffer_expanded)
		ret = FUNC2(trace_buf_size);
	FUNC1(&trace_types_lock);

	return ret;
}