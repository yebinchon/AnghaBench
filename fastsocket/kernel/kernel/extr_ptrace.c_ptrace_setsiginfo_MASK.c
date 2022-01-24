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
struct task_struct {int /*<<< orphan*/ * last_siginfo; } ;
typedef  int /*<<< orphan*/  siginfo_t ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,unsigned long*) ; 

__attribute__((used)) static int FUNC3(struct task_struct *child, const siginfo_t *info)
{
	unsigned long flags;
	int error = -ESRCH;

	if (FUNC1(child, &flags)) {
		error = -EINVAL;
		if (FUNC0(child->last_siginfo != NULL)) {
			*child->last_siginfo = *info;
			error = 0;
		}
		FUNC2(child, &flags);
	}
	return error;
}