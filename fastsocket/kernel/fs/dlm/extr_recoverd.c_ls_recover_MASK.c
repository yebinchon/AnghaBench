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
struct dlm_recover {scalar_t__ seq; } ;
struct dlm_ls {int /*<<< orphan*/  ls_recoverd_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_RS_DONE ; 
 int /*<<< orphan*/  DLM_RS_LOCKS ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ls*) ; 
 scalar_t__ FUNC7 (struct dlm_ls*) ; 
 int FUNC8 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_ls*) ; 
 int FUNC10 (struct dlm_ls*) ; 
 int FUNC11 (struct dlm_ls*) ; 
 int FUNC12 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC13 (struct dlm_ls*) ; 
 int FUNC14 (struct dlm_ls*) ; 
 int FUNC15 (struct dlm_ls*) ; 
 int FUNC16 (struct dlm_ls*) ; 
 int FUNC17 (struct dlm_ls*,struct dlm_recover*,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC19 (struct dlm_ls*) ; 
 int FUNC20 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC21 (struct dlm_ls*) ; 
 int FUNC22 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC23 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC24 (struct dlm_ls*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct dlm_ls*,scalar_t__) ; 
 unsigned long jiffies ; 
 int FUNC26 (unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (struct dlm_ls*,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC30(struct dlm_ls *ls, struct dlm_recover *rv)
{
	unsigned long start;
	int error, neg = 0;

	FUNC27(ls, "recover %llx", (unsigned long long)rv->seq);

	FUNC28(&ls->ls_recoverd_active);

	/*
	 * Suspending and resuming dlm_astd ensures that no lkb's from this ls
	 * will be processed by dlm_astd during recovery.
	 */

	FUNC2();
	FUNC1();

	/*
	 * Free non-master tossed rsb's.  Master rsb's are kept on toss
	 * list and put on root list to be included in resdir recovery.
	 */

	FUNC5(ls);

	/*
	 * This list of root rsb's will be the basis of most of the recovery
	 * routines.
	 */

	FUNC6(ls);

	/*
	 * Add or remove nodes from the lockspace's ls_nodes list.
	 * Also waits for all nodes to complete dlm_recover_members.
	 */

	error = FUNC17(ls, rv, &neg);
	if (error) {
		FUNC27(ls, "recover_members failed %d", error);
		goto fail;
	}
	start = jiffies;

	/*
	 * Rebuild our own share of the directory by collecting from all other
	 * nodes their master rsb names that hash to us.
	 */

	error = FUNC10(ls);
	if (error) {
		FUNC27(ls, "recover_directory failed %d", error);
		goto fail;
	}

	/*
	 * Wait for all nodes to complete directory rebuild.
	 */

	error = FUNC11(ls);
	if (error) {
		FUNC27(ls, "recover_directory_wait failed %d", error);
		goto fail;
	}

	/*
	 * We may have outstanding operations that are waiting for a reply from
	 * a failed node.  Mark these to be resent after recovery.  Unlock and
	 * cancel ops can just be completed.
	 */

	FUNC21(ls);

	error = FUNC22(ls);
	if (error)
		goto fail;

	if (neg || FUNC7(ls)) {
		/*
		 * Clear lkb's for departed nodes.
		 */

		FUNC18(ls);

		/*
		 * Get new master nodeid's for rsb's that were mastered on
		 * departed nodes.
		 */

		error = FUNC16(ls);
		if (error) {
			FUNC27(ls, "recover_masters failed %d", error);
			goto fail;
		}

		/*
		 * Send our locks on remastered rsb's to the new masters.
		 */

		error = FUNC14(ls);
		if (error) {
			FUNC27(ls, "recover_locks failed %d", error);
			goto fail;
		}

		error = FUNC15(ls);
		if (error) {
			FUNC27(ls, "recover_locks_wait failed %d", error);
			goto fail;
		}

		/*
		 * Finalize state in master rsb's now that all locks can be
		 * checked.  This includes conversion resolution and lvb
		 * settings.
		 */

		FUNC19(ls);
	} else {
		/*
		 * Other lockspace members may be going through the "neg" steps
		 * while also adding us to the lockspace, in which case they'll
		 * be doing the recover_locks (RS_LOCKS) barrier.
		 */
		FUNC24(ls, DLM_RS_LOCKS);

		error = FUNC15(ls);
		if (error) {
			FUNC27(ls, "recover_locks_wait failed %d", error);
			goto fail;
		}
	}

	FUNC23(ls);

	/*
	 * Purge directory-related requests that are saved in requestqueue.
	 * All dir requests from before recovery are invalid now due to the dir
	 * rebuild and will be resent by the requesting nodes.
	 */

	FUNC9(ls);

	FUNC24(ls, DLM_RS_DONE);
	error = FUNC12(ls);
	if (error) {
		FUNC27(ls, "recover_done_wait failed %d", error);
		goto fail;
	}

	FUNC4(ls);

	FUNC0(ls);

	error = FUNC25(ls, rv->seq);
	if (error) {
		FUNC27(ls, "enable_locking failed %d", error);
		goto fail;
	}

	error = FUNC8(ls);
	if (error) {
		FUNC27(ls, "process_requestqueue failed %d", error);
		goto fail;
	}

	error = FUNC20(ls);
	if (error) {
		FUNC27(ls, "recover_waiters_post failed %d", error);
		goto fail;
	}

	FUNC13(ls);

	FUNC3();

	FUNC27(ls, "recover %llx done: %u ms",
		  (unsigned long long)rv->seq,
		  FUNC26(jiffies - start));
	FUNC29(&ls->ls_recoverd_active);

	return 0;

 fail:
	FUNC23(ls);
	FUNC27(ls, "recover %llx error %d",
		  (unsigned long long)rv->seq, error);
	FUNC29(&ls->ls_recoverd_active);
	return error;
}