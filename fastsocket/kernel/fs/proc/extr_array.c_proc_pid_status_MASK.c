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
struct seq_file {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct task_struct*) ; 
 struct mm_struct* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,struct pid_namespace*,struct pid*,struct task_struct*) ; 

int FUNC9(struct seq_file *m, struct pid_namespace *ns,
			struct pid *pid, struct task_struct *task)
{
	struct mm_struct *mm = FUNC1(task);

	FUNC6(m, task);
	FUNC8(m, ns, pid, task);

	if (mm) {
		FUNC5(m, mm);
		FUNC2(mm);
	}
	FUNC7(m, task);
	FUNC3(m, task);
	FUNC0(m, task);
	FUNC4(m, task);
	return 0;
}