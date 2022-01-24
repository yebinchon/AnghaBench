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
struct dlm_ctxt {unsigned int name; int /*<<< orphan*/  dlm_worker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int DLM_DOMAIN_BACKOFF_MS ; 
 int /*<<< orphan*/  DLM_JOIN_TIMEOUT_MSECS ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  ML_NOTICE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*) ; 
 int FUNC4 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  dlm_domain_events ; 
 int FUNC7 (struct dlm_ctxt*) ; 
 int FUNC8 (struct dlm_ctxt*) ; 
 int FUNC9 (struct dlm_ctxt*) ; 
 int FUNC10 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_ctxt*) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct dlm_ctxt *dlm)
{
	int status;
	unsigned int backoff;
	unsigned int total_backoff = 0;

	FUNC0(!dlm);

	FUNC13(0, "Join domain %s\n", dlm->name);

	status = FUNC9(dlm);
	if (status) {
		FUNC14(status);
		goto bail;
	}

	status = FUNC4(dlm);
	if (status < 0) {
		FUNC14(status);
		goto bail;
	}

	status = FUNC8(dlm);
	if (status < 0) {
		FUNC14(status);
		goto bail;
	}

	status = FUNC7(dlm);
	if (status < 0) {
		FUNC14(status);
		goto bail;
	}

	dlm->dlm_worker = FUNC1("dlm_wq");
	if (!dlm->dlm_worker) {
		status = -ENOMEM;
		FUNC14(status);
		goto bail;
	}

	do {
		status = FUNC10(dlm);

		/* If we're racing another node to the join, then we
		 * need to back off temporarily and let them
		 * complete. */
#define	DLM_JOIN_TIMEOUT_MSECS	90000
		if (status == -EAGAIN) {
			if (FUNC17(current)) {
				status = -ERESTARTSYS;
				goto bail;
			}

			if (total_backoff >
			    FUNC15(DLM_JOIN_TIMEOUT_MSECS)) {
				status = -ERESTARTSYS;
				FUNC13(ML_NOTICE, "Timed out joining dlm domain "
				     "%s after %u msecs\n", dlm->name,
				     FUNC12(total_backoff));
				goto bail;
			}

			/*
			 * <chip> After you!
			 * <dale> No, after you!
			 * <chip> I insist!
			 * <dale> But you first!
			 * ...
			 */
			backoff = (unsigned int)(jiffies & 0x3);
			backoff *= DLM_DOMAIN_BACKOFF_MS;
			total_backoff += backoff;
			FUNC13(0, "backoff %d\n", backoff);
			FUNC16(backoff);
		}
	} while (status == -EAGAIN);

	if (status < 0) {
		FUNC14(status);
		goto bail;
	}

	status = 0;
bail:
	FUNC18(&dlm_domain_events);

	if (status) {
		FUNC11(dlm);
		FUNC5(dlm);
		FUNC3(dlm);
		FUNC2(dlm);
		FUNC6(dlm);
	}

	return status;
}