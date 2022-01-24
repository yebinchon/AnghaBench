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
struct dlm_ctxt {int /*<<< orphan*/  dlm_reco_thread_wq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_RECO_THREAD_TIMEOUT_MS ; 
 int EAGAIN ; 
 int FUNC0 (struct dlm_ctxt*) ; 
 scalar_t__ FUNC1 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC7(void *data)
{
	int status;
	struct dlm_ctxt *dlm = data;
	unsigned long timeout = FUNC5(DLM_RECO_THREAD_TIMEOUT_MS);

	FUNC3(0, "dlm thread running for %s...\n", dlm->name);

	while (!FUNC2()) {
		if (FUNC1(dlm)) {
			status = FUNC0(dlm);
			if (status == -EAGAIN) {
				/* do not sleep, recheck immediately. */
				continue;
			}
			if (status < 0)
				FUNC4(status);
		}

		FUNC6(dlm->dlm_reco_thread_wq,
						 FUNC2(),
						 timeout);
	}

	FUNC3(0, "quitting DLM recovery thread\n");
	return 0;
}