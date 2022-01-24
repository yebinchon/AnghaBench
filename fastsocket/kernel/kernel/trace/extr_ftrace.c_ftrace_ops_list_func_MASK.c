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
struct ftrace_ops {struct ftrace_ops* next; int /*<<< orphan*/  (* func ) (unsigned long,unsigned long) ;} ;

/* Variables and functions */
 struct ftrace_ops ftrace_list_end ; 
 struct ftrace_ops* ftrace_ops_list ; 
 scalar_t__ FUNC0 (struct ftrace_ops*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static void
FUNC5(unsigned long ip, unsigned long parent_ip)
{
	struct ftrace_ops *op;

	/*
	 * Some of the ops may be dynamically allocated,
	 * they must be freed after a synchronize_sched().
	 */
	FUNC1();
	op = ftrace_ops_list;
	FUNC3();
	while (op != &ftrace_list_end) {
		if (FUNC0(op, ip))
			op->func(ip, parent_ip);
		op = op->next;
		FUNC3();
	};
	FUNC2();
}