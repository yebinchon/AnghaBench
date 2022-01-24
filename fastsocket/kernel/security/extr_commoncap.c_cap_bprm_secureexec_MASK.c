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
struct linux_binprm {scalar_t__ cap_effective; } ;
struct cred {scalar_t__ uid; scalar_t__ euid; scalar_t__ egid; scalar_t__ gid; int /*<<< orphan*/  cap_permitted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cred* FUNC1 () ; 

int FUNC2(struct linux_binprm *bprm)
{
	const struct cred *cred = FUNC1();

	if (cred->uid != 0) {
		if (bprm->cap_effective)
			return 1;
		if (!FUNC0(cred->cap_permitted))
			return 1;
	}

	return (cred->euid != cred->uid ||
		cred->egid != cred->gid);
}