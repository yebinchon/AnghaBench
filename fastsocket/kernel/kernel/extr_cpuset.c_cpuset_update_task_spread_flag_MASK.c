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
struct task_struct {int /*<<< orphan*/  flags; } ;
struct cpuset {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_SPREAD_PAGE ; 
 int /*<<< orphan*/  PF_SPREAD_SLAB ; 
 scalar_t__ FUNC0 (struct cpuset*) ; 
 scalar_t__ FUNC1 (struct cpuset*) ; 

__attribute__((used)) static void FUNC2(struct cpuset *cs,
					struct task_struct *tsk)
{
	if (FUNC0(cs))
		tsk->flags |= PF_SPREAD_PAGE;
	else
		tsk->flags &= ~PF_SPREAD_PAGE;
	if (FUNC1(cs))
		tsk->flags |= PF_SPREAD_SLAB;
	else
		tsk->flags &= ~PF_SPREAD_SLAB;
}