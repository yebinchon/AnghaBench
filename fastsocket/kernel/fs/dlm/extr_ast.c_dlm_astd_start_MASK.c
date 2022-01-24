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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  ast_queue ; 
 int /*<<< orphan*/  ast_queue_lock ; 
 int /*<<< orphan*/  astd_running ; 
 struct task_struct* astd_task ; 
 int /*<<< orphan*/  dlm_astd ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(void)
{
	struct task_struct *p;
	int error = 0;

	FUNC0(&ast_queue);
	FUNC5(&ast_queue_lock);
	FUNC4(&astd_running);

	p = FUNC3(dlm_astd, NULL, "dlm_astd");
	if (FUNC1(p))
		error = FUNC2(p);
	else
		astd_task = p;
	return error;
}