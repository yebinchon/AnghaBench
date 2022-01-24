#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct utrace {int dummy; } ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 scalar_t__ UTRACE_SYSCALL_ABORT ; 
 struct task_struct* current ; 
 scalar_t__ FUNC1 (struct pt_regs*,struct task_struct*,struct utrace*,TYPE_1__*,scalar_t__) ; 
 TYPE_1__ report ; 
 struct utrace* FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(struct pt_regs *regs)
{
	struct task_struct *task = current;
	struct utrace *utrace = FUNC2(task);
	FUNC0(report);
	u32 resume_report = 0;

	do {
		resume_report = FUNC1(regs, task, utrace,
							&report, resume_report);
	} while (resume_report);

	return FUNC3(report.result) == UTRACE_SYSCALL_ABORT;
}