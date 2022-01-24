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
struct linux_binprm {scalar_t__ interp; scalar_t__ filename; scalar_t__ cred; } ;
struct TYPE_2__ {int /*<<< orphan*/  cred_guard_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC2 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct linux_binprm *bprm)
{
	FUNC1(bprm);
	if (bprm->cred) {
		FUNC3(&current->cred_guard_mutex);
		FUNC0(bprm->cred);
	}
	/* If a binfmt changed the interp, free it. */
	if (bprm->interp != bprm->filename)
		FUNC2(bprm->interp);
	FUNC2(bprm);
}