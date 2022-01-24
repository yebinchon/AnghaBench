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
 int /*<<< orphan*/  trace_ops ; 
 int tracer_enabled ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct trace_array *tr)
{
	FUNC0(&trace_ops);
	if (FUNC1())
		tracer_enabled = 1;
	else
		tracer_enabled = 0;
}