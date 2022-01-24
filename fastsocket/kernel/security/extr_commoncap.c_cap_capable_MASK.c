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
struct cred {int /*<<< orphan*/  cap_effective; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 

int FUNC1(struct task_struct *tsk, const struct cred *cred, int cap,
		int audit)
{
	return FUNC0(cred->cap_effective, cap) ? 0 : -EPERM;
}