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
struct utrace {int dummy; } ;
struct task_struct {int dummy; } ;
struct TYPE_4__ {scalar_t__ action; int /*<<< orphan*/  resume_action; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct utrace*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ UTRACE_STOP ; 
 struct task_struct* current ; 
 TYPE_1__ report ; 
 int /*<<< orphan*/  report_exit ; 
 struct utrace* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,struct utrace*,int /*<<< orphan*/ ) ; 

void FUNC5(long *exit_code)
{
	struct task_struct *task = current;
	struct utrace *utrace = FUNC3(task);
	FUNC0(report);
	long orig_code = *exit_code;

	FUNC1(task, utrace, &report, FUNC2(EXIT),
	       report_exit, orig_code, exit_code);

	if (report.action == UTRACE_STOP)
		FUNC4(task, utrace, report.resume_action);
}