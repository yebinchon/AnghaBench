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
struct pid {int dummy; } ;

/* Variables and functions */
 int PROC_NUMBUF ; 
 int FUNC0 (struct task_struct*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ns_subsys ; 
 int FUNC1 (struct pid*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

int FUNC3(struct task_struct *task, struct pid *pid)
{
	char name[PROC_NUMBUF];

	FUNC2(name, PROC_NUMBUF, "%d", FUNC1(pid));
	return FUNC0(task, &ns_subsys, name);
}