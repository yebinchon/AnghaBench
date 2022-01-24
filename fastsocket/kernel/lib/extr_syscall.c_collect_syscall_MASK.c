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
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 unsigned long FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct pt_regs*,int /*<<< orphan*/ ,unsigned int,unsigned long*) ; 
 long FUNC2 (struct task_struct*,struct pt_regs*) ; 
 struct pt_regs* FUNC3 (struct task_struct*) ; 
 scalar_t__ FUNC4 (int) ; 
 unsigned long FUNC5 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC6(struct task_struct *target, long *callno,
			   unsigned long args[6], unsigned int maxargs,
			   unsigned long *sp, unsigned long *pc)
{
	struct pt_regs *regs = FUNC3(target);
	if (FUNC4(!regs))
		return -EAGAIN;

	*sp = FUNC5(regs);
	*pc = FUNC0(regs);

	*callno = FUNC2(target, regs);
	if (*callno != -1L && maxargs > 0)
		FUNC1(target, regs, 0, maxargs, args);

	return 0;
}