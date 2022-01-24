#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct utrace {int dummy; } ;
struct task_struct {TYPE_1__* sighand; } ;
struct TYPE_2__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JCTL ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct utrace*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  report ; 
 int /*<<< orphan*/  report_jctl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct utrace* FUNC5 (struct task_struct*) ; 

void FUNC6(int notify, int what)
{
	struct task_struct *task = current;
	struct utrace *utrace = FUNC5(task);
	FUNC0(report);

	FUNC4(&task->sighand->siglock);

	FUNC1(task, utrace, &report, FUNC2(JCTL),
	       report_jctl, what, notify);

	FUNC3(&task->sighand->siglock);
}