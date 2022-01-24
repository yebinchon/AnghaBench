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
struct siginfo {int dummy; } ;

/* Variables and functions */
 int ESRCH ; 
 scalar_t__ FUNC0 (struct task_struct*,unsigned long*) ; 
 int FUNC1 (int,struct siginfo*,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,unsigned long*) ; 

int FUNC3(int sig, struct siginfo *info, struct task_struct *p,
			bool group)
{
	unsigned long flags;
	int ret = -ESRCH;

	if (FUNC0(p, &flags)) {
		ret = FUNC1(sig, info, p, group);
		FUNC2(p, &flags);
	}

	return ret;
}