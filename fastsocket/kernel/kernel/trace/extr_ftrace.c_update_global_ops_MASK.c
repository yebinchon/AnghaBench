#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ftrace_func_t ;
struct TYPE_5__ {int /*<<< orphan*/  func; struct TYPE_5__* next; } ;
struct TYPE_4__ {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 TYPE_2__* ftrace_global_list ; 
 int /*<<< orphan*/  ftrace_global_list_func ; 
 TYPE_2__ ftrace_list_end ; 
 int /*<<< orphan*/  ftrace_pid_func ; 
 int /*<<< orphan*/  ftrace_pids ; 
 TYPE_1__ global_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	ftrace_func_t func;

	/*
	 * If there's only one function registered, then call that
	 * function directly. Otherwise, we need to iterate over the
	 * registered callers.
	 */
	if (ftrace_global_list == &ftrace_list_end ||
	    ftrace_global_list->next == &ftrace_list_end)
		func = ftrace_global_list->func;
	else
		func = ftrace_global_list_func;

	if (!FUNC0(&ftrace_pids)) {
		FUNC1(func);
		func = ftrace_pid_func;
	}

	global_ops.func = func;
}