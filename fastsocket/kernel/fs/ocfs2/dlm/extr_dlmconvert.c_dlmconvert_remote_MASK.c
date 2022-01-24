#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dlm_lock_resource {int state; int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  converting; } ;
struct TYPE_3__ {scalar_t__ type; int convert_type; int /*<<< orphan*/  cookie; } ;
struct dlm_lock {int convert_pending; TYPE_2__* lksb; TYPE_1__ ml; int /*<<< orphan*/  list; } ;
struct dlm_ctxt {int dummy; } ;
typedef  enum dlm_status { ____Placeholder_dlm_status } dlm_status ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int DLM_DENIED ; 
 int /*<<< orphan*/  DLM_LKSB_GET_LVB ; 
 int /*<<< orphan*/  DLM_LKSB_PUT_LVB ; 
 int DLM_LOCK_RES_IN_PROGRESS ; 
 int DLM_LOCK_RES_RECOVERING ; 
 int DLM_NORMAL ; 
 int DLM_NOTQUEUED ; 
 int DLM_RECOVERING ; 
 scalar_t__ LKM_EXMODE ; 
 int LKM_GET_LVB ; 
 int LKM_IVMODE ; 
 int LKM_NLMODE ; 
 int LKM_PUT_LVB ; 
 int LKM_VALBLK ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_lock_resource*,struct dlm_lock*) ; 
 int FUNC7 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

enum dlm_status FUNC13(struct dlm_ctxt *dlm,
				  struct dlm_lock_resource *res,
				  struct dlm_lock *lock, int flags, int type)
{
	enum dlm_status status;

	FUNC9(0, "type=%d, convert_type=%d, busy=%d\n", lock->ml.type,
	     lock->ml.convert_type, res->state & DLM_LOCK_RES_IN_PROGRESS);

	FUNC10(&res->spinlock);
	if (res->state & DLM_LOCK_RES_RECOVERING) {
		FUNC9(0, "bailing out early since res is RECOVERING "
		     "on secondary queue\n");
		/* __dlm_print_one_lock_resource(res); */
		status = DLM_RECOVERING;
		goto bail;
	}
	/* will exit this call with spinlock held */
	FUNC1(res);

	if (lock->ml.convert_type != LKM_IVMODE) {
		FUNC0(res);
		FUNC9(ML_ERROR, "converting a remote lock that is already "
		     "converting! (cookie=%u:%llu, conv=%d)\n",
		     FUNC4(FUNC2(lock->ml.cookie)),
		     FUNC5(FUNC2(lock->ml.cookie)),
		     lock->ml.convert_type);
		status = DLM_DENIED;
		goto bail;
	}
	res->state |= DLM_LOCK_RES_IN_PROGRESS;
	/* move lock to local convert queue */
	/* do not alter lock refcount.  switching lists. */
	FUNC8(&lock->list, &res->converting);
	lock->convert_pending = 1;
	lock->ml.convert_type = type;

	if (flags & LKM_VALBLK) {
		if (lock->ml.type == LKM_EXMODE) {
			flags |= LKM_PUT_LVB;
			lock->lksb->flags |= DLM_LKSB_PUT_LVB;
		} else {
			if (lock->ml.convert_type == LKM_NLMODE)
				flags &= ~LKM_VALBLK;
			else {
				flags |= LKM_GET_LVB;
				lock->lksb->flags |= DLM_LKSB_GET_LVB;
			}
		}
	}
	FUNC11(&res->spinlock);

	/* no locks held here.
	 * need to wait for a reply as to whether it got queued or not. */
	status = FUNC7(dlm, res, lock, flags, type);

	FUNC10(&res->spinlock);
	res->state &= ~DLM_LOCK_RES_IN_PROGRESS;
	lock->convert_pending = 0;
	/* if it failed, move it back to granted queue */
	if (status != DLM_NORMAL) {
		if (status != DLM_NOTQUEUED)
			FUNC3(status);
		FUNC6(res, lock);
	}
bail:
	FUNC11(&res->spinlock);

	/* TODO: should this be a wake_one? */
	/* wake up any IN_PROGRESS waiters */
	FUNC12(&res->wq);

	return status;
}