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
 int EINVAL ; 
 int FUNC0 (int,struct siginfo*,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int
FUNC2(int sig, struct siginfo *info, struct task_struct *p)
{
	/*
	 * Make sure legacy kernel users don't send in bad values
	 * (normal paths check this in check_kill_permission).
	 */
	if (!FUNC1(sig))
		return -EINVAL;

	return FUNC0(sig, info, p, false);
}