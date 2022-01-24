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
struct task_struct {long state; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int FUNC0 (struct task_struct*,long*,unsigned long*,unsigned int,unsigned long*,unsigned long*) ; 
 struct task_struct* current ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned long FUNC2 (struct task_struct*,long) ; 

int FUNC3(struct task_struct *target, long *callno,
			 unsigned long args[6], unsigned int maxargs,
			 unsigned long *sp, unsigned long *pc)
{
	long state;
	unsigned long ncsw;

	if (FUNC1(maxargs > 6))
		return -EINVAL;

	if (target == current)
		return FUNC0(target, callno, args, maxargs, sp, pc);

	state = target->state;
	if (FUNC1(!state))
		return -EAGAIN;

	ncsw = FUNC2(target, state);
	if (FUNC1(!ncsw) ||
	    FUNC1(FUNC0(target, callno, args, maxargs, sp, pc)) ||
	    FUNC1(FUNC2(target, state) != ncsw))
		return -EAGAIN;

	return 0;
}