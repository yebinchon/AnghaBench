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
struct ftrace_ops {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ftrace_ops*) ; 
 int /*<<< orphan*/  ftrace_disabled ; 
 int /*<<< orphan*/  ftrace_lock ; 
 int FUNC1 (struct ftrace_ops*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct ftrace_ops *ops)
{
	int ret = -1;

	FUNC2(&ftrace_lock);

	if (FUNC4(ftrace_disabled))
		goto out_unlock;

	ret = FUNC0(ops);
	if (!ret)
		ret = FUNC1(ops, 0);


 out_unlock:
	FUNC3(&ftrace_lock);
	return ret;
}