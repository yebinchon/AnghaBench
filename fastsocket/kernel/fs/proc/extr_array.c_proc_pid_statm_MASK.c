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
 struct mm_struct* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mm_struct*,int*,int*,int*,int*) ; 

int FUNC4(struct seq_file *m, struct pid_namespace *ns,
			struct pid *pid, struct task_struct *task)
{
	int size = 0, resident = 0, shared = 0, text = 0, lib = 0, data = 0;
	struct mm_struct *mm = FUNC0(task);

	if (mm) {
		size = FUNC3(mm, &shared, &text, &data, &resident);
		FUNC1(mm);
	}
	FUNC2(m, "%d %d %d %d %d %d %d\n",
			size, resident, shared, text, lib, data, 0);

	return 0;
}