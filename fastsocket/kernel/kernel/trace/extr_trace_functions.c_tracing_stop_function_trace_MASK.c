#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int val; } ;

/* Variables and functions */
 int TRACE_FUNC_OPT_STACK ; 
 scalar_t__ ftrace_function_enabled ; 
 TYPE_1__ func_flags ; 
 int /*<<< orphan*/  trace_ops ; 
 int /*<<< orphan*/  trace_stack_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void)
{
	ftrace_function_enabled = 0;

	if (func_flags.val & TRACE_FUNC_OPT_STACK)
		FUNC0(&trace_stack_ops);
	else
		FUNC0(&trace_ops);
}