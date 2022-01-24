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
struct user_lock_res {int l_flags; int /*<<< orphan*/  l_event; int /*<<< orphan*/  l_lock; void* l_requested; void* l_level; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_namelen; } ;
typedef  enum dlm_status { ____Placeholder_dlm_status } dlm_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_CANCELGRANT ; 
 int DLM_NORMAL ; 
 void* LKM_IVMODE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int USER_LOCK_BLOCKED ; 
 int USER_LOCK_BUSY ; 
 int USER_LOCK_IN_CANCEL ; 
 int USER_LOCK_IN_TEARDOWN ; 
 int /*<<< orphan*/  FUNC1 (struct user_lock_res*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *opaque, enum dlm_status status)
{
	struct user_lock_res *lockres = opaque;

	FUNC2(0, "UNLOCK AST called on lock %.*s\n", lockres->l_namelen,
	     lockres->l_name);

	if (status != DLM_NORMAL && status != DLM_CANCELGRANT)
		FUNC2(ML_ERROR, "Dlm returns status %d\n", status);

	FUNC3(&lockres->l_lock);
	/* The teardown flag gets set early during the unlock process,
	 * so test the cancel flag to make sure that this ast isn't
	 * for a concurrent cancel. */
	if (lockres->l_flags & USER_LOCK_IN_TEARDOWN
	    && !(lockres->l_flags & USER_LOCK_IN_CANCEL)) {
		lockres->l_level = LKM_IVMODE;
	} else if (status == DLM_CANCELGRANT) {
		/* We tried to cancel a convert request, but it was
		 * already granted. Don't clear the busy flag - the
		 * ast should've done this already. */
		FUNC0(!(lockres->l_flags & USER_LOCK_IN_CANCEL));
		lockres->l_flags &= ~USER_LOCK_IN_CANCEL;
		goto out_noclear;
	} else {
		FUNC0(!(lockres->l_flags & USER_LOCK_IN_CANCEL));
		/* Cancel succeeded, we want to re-queue */
		lockres->l_requested = LKM_IVMODE; /* cancel an
						    * upconvert
						    * request. */
		lockres->l_flags &= ~USER_LOCK_IN_CANCEL;
		/* we want the unblock thread to look at it again
		 * now. */
		if (lockres->l_flags & USER_LOCK_BLOCKED)
			FUNC1(lockres);
	}

	lockres->l_flags &= ~USER_LOCK_BUSY;
out_noclear:
	FUNC4(&lockres->l_lock);

	FUNC5(&lockres->l_event);
}