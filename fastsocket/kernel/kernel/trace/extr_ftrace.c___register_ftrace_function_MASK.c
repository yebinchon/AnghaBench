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
struct ftrace_ops {int flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int FTRACE_OPS_FL_DYNAMIC ; 
 int FTRACE_OPS_FL_ENABLED ; 
 int FTRACE_OPS_FL_GLOBAL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,struct ftrace_ops*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ ftrace_disabled ; 
 scalar_t__ ftrace_enabled ; 
 int /*<<< orphan*/ * ftrace_global_list ; 
 int /*<<< orphan*/  ftrace_list_end ; 
 int /*<<< orphan*/ * ftrace_ops_list ; 
 struct ftrace_ops global_ops ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct ftrace_ops *ops)
{
	if (ftrace_disabled)
		return -ENODEV;

	if (FUNC0(ops == &global_ops))
		return -EINVAL;

	if (FUNC1(ops->flags & FTRACE_OPS_FL_ENABLED))
		return -EBUSY;

	if (!FUNC3((unsigned long)ops))
		ops->flags |= FTRACE_OPS_FL_DYNAMIC;

	if (ops->flags & FTRACE_OPS_FL_GLOBAL) {
		int first = ftrace_global_list == &ftrace_list_end;
		FUNC2(&ftrace_global_list, ops);
		ops->flags |= FTRACE_OPS_FL_ENABLED;
		if (first)
			FUNC2(&ftrace_ops_list, &global_ops);
	} else
		FUNC2(&ftrace_ops_list, ops);

	if (ftrace_enabled)
		FUNC4();

	return 0;
}