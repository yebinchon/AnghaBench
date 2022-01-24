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
struct task_security_struct {int /*<<< orphan*/  sockcreate_sid; int /*<<< orphan*/  keycreate_sid; int /*<<< orphan*/  create_sid; int /*<<< orphan*/  exec_sid; int /*<<< orphan*/  osid; int /*<<< orphan*/  sid; } ;
struct TYPE_2__ {struct task_security_struct* security; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PROCESS__GETATTR ; 
 TYPE_1__* FUNC0 (struct task_struct*) ; 
 struct task_struct* current ; 
 int FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(struct task_struct *p,
			       char *name, char **value)
{
	const struct task_security_struct *__tsec;
	u32 sid;
	int error;
	unsigned len;

	if (current != p) {
		error = FUNC1(p, PROCESS__GETATTR);
		if (error)
			return error;
	}

	FUNC2();
	__tsec = FUNC0(p)->security;

	if (!FUNC5(name, "current"))
		sid = __tsec->sid;
	else if (!FUNC5(name, "prev"))
		sid = __tsec->osid;
	else if (!FUNC5(name, "exec"))
		sid = __tsec->exec_sid;
	else if (!FUNC5(name, "fscreate"))
		sid = __tsec->create_sid;
	else if (!FUNC5(name, "keycreate"))
		sid = __tsec->keycreate_sid;
	else if (!FUNC5(name, "sockcreate"))
		sid = __tsec->sockcreate_sid;
	else
		goto invalid;
	FUNC3();

	if (!sid)
		return 0;

	error = FUNC4(sid, value, &len);
	if (error)
		return error;
	return len;

invalid:
	FUNC3();
	return -EINVAL;
}