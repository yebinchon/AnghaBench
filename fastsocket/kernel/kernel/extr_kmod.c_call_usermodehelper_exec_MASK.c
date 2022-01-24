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
struct subprocess_info {char* path; int wait; int retval; int /*<<< orphan*/ * complete; int /*<<< orphan*/  work; TYPE_1__* cred; } ;
typedef  enum umh_wait { ____Placeholder_umh_wait } umh_wait ;
struct TYPE_2__ {int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int UMH_KILLABLE ; 
 int UMH_NO_WAIT ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct subprocess_info*) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  khelper_wq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ usermodehelper_disabled ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC11(struct subprocess_info *sub_info,
			     enum umh_wait wait)
{
	FUNC1(done);
	int retval = 0;

	FUNC0(FUNC2(&sub_info->cred->usage) != 1);
	FUNC7(sub_info->cred);

	FUNC4();
	if (sub_info->path[0] == '\0')
		goto out;

	if (!khelper_wq || usermodehelper_disabled) {
		retval = -EBUSY;
		goto out;
	}

	sub_info->complete = &done;
	sub_info->wait = wait;

	FUNC6(khelper_wq, &sub_info->work);
	if (wait == UMH_NO_WAIT)	/* task has freed sub_info */
		goto unlock;

	if (wait & UMH_KILLABLE) {
		retval = FUNC9(&done);
		if (!retval)
			goto wait_done;

		/* umh_complete() will see NULL and free sub_info */
		if (FUNC10(&sub_info->complete, NULL))
			goto unlock;
		/* fallthrough, umh_complete() was already called */
	}

	FUNC8(&done);
wait_done:
	retval = sub_info->retval;
out:
	FUNC3(sub_info);
unlock:
	FUNC5();
	return retval;
}