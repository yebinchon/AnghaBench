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
struct task_struct {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 scalar_t__ panic_on_oops ; 

int FUNC2(struct task_struct *p)
{
	if (FUNC0() || !p->pid || FUNC1(p) || panic_on_oops)
		return 1;
	return 0;
}