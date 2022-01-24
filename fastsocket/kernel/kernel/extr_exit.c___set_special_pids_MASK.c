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
struct task_struct {int dummy; } ;
struct pid {int dummy; } ;
struct TYPE_2__ {struct task_struct* group_leader; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIDTYPE_PGID ; 
 int /*<<< orphan*/  PIDTYPE_SID ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ,struct pid*) ; 
 TYPE_1__* current ; 
 struct pid* FUNC1 (struct task_struct*) ; 
 struct pid* FUNC2 (struct task_struct*) ; 

void FUNC3(struct pid *pid)
{
	struct task_struct *curr = current->group_leader;

	if (FUNC2(curr) != pid)
		FUNC0(curr, PIDTYPE_SID, pid);

	if (FUNC1(curr) != pid)
		FUNC0(curr, PIDTYPE_PGID, pid);
}