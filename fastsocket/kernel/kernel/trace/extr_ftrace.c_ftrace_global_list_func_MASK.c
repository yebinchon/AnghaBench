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
 struct ftrace_ops* ftrace_global_list ; 
 struct ftrace_ops ftrace_list_end ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC2(unsigned long ip,
				    unsigned long parent_ip)
{
	struct ftrace_ops *op = ftrace_global_list;

	/* in case someone actually ports this to alpha! */
	FUNC0();

	while (op != &ftrace_list_end) {
		/* silly alpha */
		FUNC0();
		op->func(ip, parent_ip);
		op = op->next;
	};
}