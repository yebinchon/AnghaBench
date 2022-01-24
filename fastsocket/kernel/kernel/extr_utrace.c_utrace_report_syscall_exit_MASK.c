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
struct utrace {int dummy; } ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct utrace*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pt_regs*) ; 
 int /*<<< orphan*/  SYSCALL_EXIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  report ; 
 int /*<<< orphan*/  report_syscall_exit ; 
 struct utrace* FUNC3 (struct task_struct*) ; 

void FUNC4(struct pt_regs *regs)
{
	struct task_struct *task = current;
	struct utrace *utrace = FUNC3(task);
	FUNC0(report);

	FUNC1(task, utrace, &report, FUNC2(SYSCALL_EXIT),
	       report_syscall_exit, regs);
}