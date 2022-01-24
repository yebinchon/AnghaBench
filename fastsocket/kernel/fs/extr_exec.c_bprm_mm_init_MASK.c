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
struct mm_struct {int dummy; } ;
struct linux_binprm {struct mm_struct* mm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct linux_binprm*) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mm_struct*) ; 
 struct mm_struct* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 

int FUNC4(struct linux_binprm *bprm)
{
	int err;
	struct mm_struct *mm = NULL;

	bprm->mm = mm = FUNC2();
	err = -ENOMEM;
	if (!mm)
		goto err;

	err = FUNC1(current, mm);
	if (err)
		goto err;

	err = FUNC0(bprm);
	if (err)
		goto err;

	return 0;

err:
	if (mm) {
		bprm->mm = NULL;
		FUNC3(mm);
	}

	return err;
}