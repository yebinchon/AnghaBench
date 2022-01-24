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
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {int dummy; } ;
struct task_security_struct {int /*<<< orphan*/  sid; } ;
struct TYPE_2__ {struct task_security_struct* security; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  SECCLASS_SECURITY ; 
 int /*<<< orphan*/  SECINITSID_SECURITY ; 
 TYPE_1__* FUNC0 (struct task_struct*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct task_struct *tsk,
			     u32 perms)
{
	const struct task_security_struct *tsec;
	u32 sid = 0;

	FUNC2();
	tsec = FUNC0(tsk)->security;
	if (tsec)
		sid = tsec->sid;
	FUNC3();
	if (!tsec)
		return -EACCES;

	return FUNC1(sid, SECINITSID_SECURITY,
			    SECCLASS_SECURITY, perms, NULL);
}