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
struct pid {int dummy; } ;
struct TYPE_2__ {int pid_type; int /*<<< orphan*/  lock; int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; scalar_t__ pid; } ;
struct file {TYPE_1__ f_owner; } ;
struct cred {int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 struct cred* FUNC0 () ; 
 scalar_t__ FUNC1 (struct pid*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct file *filp, struct pid *pid, enum pid_type type,
                     int force)
{
	FUNC3(&filp->f_owner.lock);
	if (force || !filp->f_owner.pid) {
		FUNC2(filp->f_owner.pid);
		filp->f_owner.pid = FUNC1(pid);
		filp->f_owner.pid_type = type;

		if (pid) {
			const struct cred *cred = FUNC0();
			filp->f_owner.uid = cred->uid;
			filp->f_owner.euid = cred->euid;
		}
	}
	FUNC4(&filp->f_owner.lock);
}