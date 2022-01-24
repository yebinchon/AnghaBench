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
struct trace_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sample_timer_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct trace_array* sysprof_trace ; 
 int tracer_enabled ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct trace_array *tr)
{
	sysprof_trace = tr;

	FUNC3();

	FUNC0(&sample_timer_lock);
	FUNC2();
	tracer_enabled = 1;
	FUNC1(&sample_timer_lock);
	return 0;
}