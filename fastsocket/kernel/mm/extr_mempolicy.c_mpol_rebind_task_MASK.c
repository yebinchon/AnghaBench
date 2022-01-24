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
struct task_struct {int /*<<< orphan*/  mempolicy; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  enum mpol_rebind_step { ____Placeholder_mpol_rebind_step } mpol_rebind_step ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

void FUNC1(struct task_struct *tsk, const nodemask_t *new,
			enum mpol_rebind_step step)
{
	FUNC0(tsk->mempolicy, new, step);
}