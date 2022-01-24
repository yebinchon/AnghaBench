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
struct task_struct {int /*<<< orphan*/  ptrace_entry; int /*<<< orphan*/  real_parent; int /*<<< orphan*/  parent; scalar_t__ ptrace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 

void FUNC4(struct task_struct *child)
{
	FUNC0(!child->ptrace);

	child->ptrace = 0;
	child->parent = child->real_parent;
	FUNC1(&child->ptrace_entry);

	if (FUNC3(child))
		FUNC2(child);
}