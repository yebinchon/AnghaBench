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
struct task_struct {int /*<<< orphan*/  mems_allowed; int /*<<< orphan*/  cpus_allowed; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

void FUNC5(struct seq_file *m, struct task_struct *task)
{
	FUNC4(m, "Cpus_allowed:\t");
	FUNC0(m, &task->cpus_allowed);
	FUNC4(m, "\n");
	FUNC4(m, "Cpus_allowed_list:\t");
	FUNC1(m, &task->cpus_allowed);
	FUNC4(m, "\n");
	FUNC4(m, "Mems_allowed:\t");
	FUNC2(m, &task->mems_allowed);
	FUNC4(m, "\n");
	FUNC4(m, "Mems_allowed_list:\t");
	FUNC3(m, &task->mems_allowed);
	FUNC4(m, "\n");
}