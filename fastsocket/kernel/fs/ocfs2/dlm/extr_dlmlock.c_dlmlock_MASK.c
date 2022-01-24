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
typedef  int /*<<< orphan*/  u64 ;
struct dlm_lockstatus {int status; int /*<<< orphan*/  flags; struct dlm_lock* lockid; } ;
struct dlm_lock_resource {scalar_t__ owner; } ;
struct dlm_lock {void* astdata; struct dlm_lockstatus* lksb; int /*<<< orphan*/ * bast; int /*<<< orphan*/ * ast; struct dlm_lock_resource* lockres; } ;
struct dlm_ctxt {scalar_t__ node_num; struct dlm_lock* name; } ;
typedef  enum dlm_status { ____Placeholder_dlm_status } dlm_status ;
typedef  int /*<<< orphan*/  dlm_bastlockfunc_t ;
typedef  int /*<<< orphan*/  dlm_astlockfunc_t ;

/* Variables and functions */
 int DLM_BADARGS ; 
 int DLM_BADPARAM ; 
 int DLM_FORWARD ; 
 int DLM_IVBUFLEN ; 
 int DLM_IVLOCKID ; 
 int /*<<< orphan*/  DLM_LKSB_GET_LVB ; 
 int DLM_LOCKID_NAME_MAX ; 
 int DLM_MIGRATING ; 
 int /*<<< orphan*/  DLM_NODE_DEATH_WAIT_MAX ; 
 int DLM_NORMAL ; 
 int DLM_NOTQUEUED ; 
 int DLM_RECOVERING ; 
 int LKM_CONVERT ; 
 int LKM_EXMODE ; 
 int LKM_GET_LVB ; 
 int LKM_LOCAL ; 
 int LKM_NLMODE ; 
 int LKM_PRMODE ; 
 int LKM_RECOVERY ; 
 int LKM_VALBLK ; 
 int LKM_VALID_FLAGS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct dlm_lock_resource* FUNC1 (struct dlm_ctxt*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_lock*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_lock_resource*) ; 
 struct dlm_lock* FUNC8 (int,scalar_t__,int /*<<< orphan*/ ,struct dlm_lockstatus*) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_ctxt*) ; 
 int FUNC11 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int,int) ; 
 int FUNC12 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int,int) ; 
 int FUNC13 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int) ; 
 int FUNC14 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

enum dlm_status FUNC17(struct dlm_ctxt *dlm, int mode,
			struct dlm_lockstatus *lksb, int flags,
			const char *name, int namelen, dlm_astlockfunc_t *ast,
			void *data, dlm_bastlockfunc_t *bast)
{
	enum dlm_status status;
	struct dlm_lock_resource *res = NULL;
	struct dlm_lock *lock = NULL;
	int convert = 0, recovery = 0;

	/* yes this function is a mess.
	 * TODO: clean this up.  lots of common code in the
	 *       lock and convert paths, especially in the retry blocks */
	if (!lksb) {
		FUNC0(DLM_BADARGS);
		return DLM_BADARGS;
	}

	status = DLM_BADPARAM;
	if (mode != LKM_EXMODE && mode != LKM_PRMODE && mode != LKM_NLMODE) {
		FUNC0(status);
		goto error;
	}

	if (flags & ~LKM_VALID_FLAGS) {
		FUNC0(status);
		goto error;
	}

	convert = (flags & LKM_CONVERT);
	recovery = (flags & LKM_RECOVERY);

	if (recovery &&
	    (!FUNC3(name, namelen) || convert) ) {
		FUNC0(status);
		goto error;
	}
	if (convert && (flags & LKM_LOCAL)) {
		FUNC15(ML_ERROR, "strange LOCAL convert request!\n");
		goto error;
	}

	if (convert) {
		/* CONVERT request */

		/* if converting, must pass in a valid dlm_lock */
		lock = lksb->lockid;
		if (!lock) {
			FUNC15(ML_ERROR, "NULL lock pointer in convert "
			     "request\n");
			goto error;
		}

		res = lock->lockres;
		if (!res) {
			FUNC15(ML_ERROR, "NULL lockres pointer in convert "
			     "request\n");
			goto error;
		}
		FUNC6(res);

		/* XXX: for ocfs2 purposes, the ast/bast/astdata/lksb are
	 	 * static after the original lock call.  convert requests will
		 * ensure that everything is the same, or return DLM_BADARGS.
	 	 * this means that DLM_DENIED_NOASTS will never be returned.
	 	 */
		if (lock->lksb != lksb || lock->ast != ast ||
		    lock->bast != bast || lock->astdata != data) {
			status = DLM_BADARGS;
			FUNC15(ML_ERROR, "new args:  lksb=%p, ast=%p, bast=%p, "
			     "astdata=%p\n", lksb, ast, bast, data);
			FUNC15(ML_ERROR, "orig args: lksb=%p, ast=%p, bast=%p, "
			     "astdata=%p\n", lock->lksb, lock->ast,
			     lock->bast, lock->astdata);
			goto error;
		}
retry_convert:
		FUNC10(dlm);

		if (res->owner == dlm->node_num)
			status = FUNC11(dlm, res, lock, flags, mode);
		else
			status = FUNC12(dlm, res, lock, flags, mode);
		if (status == DLM_RECOVERING || status == DLM_MIGRATING ||
		    status == DLM_FORWARD) {
			/* for now, see how this works without sleeping
			 * and just retry right away.  I suspect the reco
			 * or migration will complete fast enough that
			 * no waiting will be necessary */
			FUNC15(0, "retrying convert with migration/recovery/"
			     "in-progress\n");
			FUNC16(100);
			goto retry_convert;
		}
	} else {
		u64 tmpcookie;

		/* LOCK request */
		status = DLM_BADARGS;
		if (!name) {
			FUNC0(status);
			goto error;
		}

		status = DLM_IVBUFLEN;
		if (namelen > DLM_LOCKID_NAME_MAX || namelen < 1) {
			FUNC0(status);
			goto error;
		}

		FUNC2(dlm->node_num, &tmpcookie);
		lock = FUNC8(mode, dlm->node_num, tmpcookie, lksb);
		if (!lock) {
			FUNC0(status);
			goto error;
		}

		if (!recovery)
			FUNC10(dlm);

		/* find or create the lock resource */
		res = FUNC1(dlm, name, namelen, flags);
		if (!res) {
			status = DLM_IVLOCKID;
			FUNC0(status);
			goto error;
		}

		FUNC15(0, "type=%d, flags = 0x%x\n", mode, flags);
		FUNC15(0, "creating lock: lock=%p res=%p\n", lock, res);

		FUNC4(lock, res);
		lock->ast = ast;
		lock->bast = bast;
		lock->astdata = data;

retry_lock:
		if (flags & LKM_VALBLK) {
			FUNC15(0, "LKM_VALBLK passed by caller\n");

			/* LVB requests for non PR, PW or EX locks are
			 * ignored. */
			if (mode < LKM_PRMODE)
				flags &= ~LKM_VALBLK;
			else {
				flags |= LKM_GET_LVB;
				lock->lksb->flags |= DLM_LKSB_GET_LVB;
			}
		}

		if (res->owner == dlm->node_num)
			status = FUNC13(dlm, res, lock, flags);
		else
			status = FUNC14(dlm, res, lock, flags);

		if (status == DLM_RECOVERING || status == DLM_MIGRATING ||
		    status == DLM_FORWARD) {
			FUNC15(0, "retrying lock with migration/"
			     "recovery/in progress\n");
			FUNC16(100);
			/* no waiting for dlm_reco_thread */
			if (recovery) {
				if (status != DLM_RECOVERING)
					goto retry_lock;

				FUNC15(0, "%s: got RECOVERING "
				     "for $RECOVERY lock, master "
				     "was %u\n", dlm->name,
				     res->owner);
				/* wait to see the node go down, then
				 * drop down and allow the lockres to
				 * get cleaned up.  need to remaster. */
				FUNC9(dlm, res->owner,
						DLM_NODE_DEATH_WAIT_MAX);
			} else {
				FUNC10(dlm);
				goto retry_lock;
			}
		}

		if (status != DLM_NORMAL) {
			lock->lksb->flags &= ~DLM_LKSB_GET_LVB;
			if (status != DLM_NOTQUEUED)
				FUNC0(status);
			goto error;
		}
	}

error:
	if (status != DLM_NORMAL) {
		if (lock && !convert)
			FUNC5(lock);
		// this is kind of unnecessary
		lksb->status = status;
	}

	/* put lockres ref from the convert path
	 * or from dlm_get_lock_resource */
	if (res)
		FUNC7(res);

	return status;
}