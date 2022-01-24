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
struct cred {int /*<<< orphan*/  cap_permitted; int /*<<< orphan*/  cap_inheritable; int /*<<< orphan*/  cap_effective; } ;
typedef  int /*<<< orphan*/  kernel_cap_t ;

/* Variables and functions */
 struct cred* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct task_struct *target, kernel_cap_t *effective,
	       kernel_cap_t *inheritable, kernel_cap_t *permitted)
{
	const struct cred *cred;

	/* Derived from kernel/capability.c:sys_capget. */
	FUNC1();
	cred = FUNC0(target);
	*effective   = cred->cap_effective;
	*inheritable = cred->cap_inheritable;
	*permitted   = cred->cap_permitted;
	FUNC2();
	return 0;
}