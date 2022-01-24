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
struct task_struct {TYPE_1__* cgroups; int /*<<< orphan*/  cg_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  tasks; } ;

/* Variables and functions */
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 scalar_t__ use_task_css_set_links ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct task_struct *child)
{
	if (use_task_css_set_links) {
		FUNC4(&css_set_lock);
		FUNC2(child);
		if (FUNC1(&child->cg_list))
			FUNC0(&child->cg_list, &child->cgroups->tasks);
		FUNC3(child);
		FUNC5(&css_set_lock);
	}
}