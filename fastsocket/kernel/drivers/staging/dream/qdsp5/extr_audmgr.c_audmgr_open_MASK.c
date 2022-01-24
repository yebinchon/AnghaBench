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
struct audmgr {scalar_t__ state; int /*<<< orphan*/ * ept; int /*<<< orphan*/ * task; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDMGR_PROG ; 
 int /*<<< orphan*/  AUDMGR_VERS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSM_RPC_UNINTERRUPTIBLE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ STATE_CLOSED ; 
 scalar_t__ STATE_DISABLED ; 
 int /*<<< orphan*/  audmgr_rpc_thread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct audmgr*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(struct audmgr *am)
{
	int rc;

	if (am->state != STATE_CLOSED)
		return 0;

	am->ept = FUNC5(AUDMGR_PROG,
				AUDMGR_VERS,
				MSM_RPC_UNINTERRUPTIBLE);

	FUNC2(&am->wait);

	if (FUNC0(am->ept)) {
		rc = FUNC1(am->ept);
		am->ept = NULL;
		FUNC6("audmgr: failed to connect to audmgr svc\n");
		return rc;
	}

	am->task = FUNC3(audmgr_rpc_thread, am, "audmgr_rpc");
	if (FUNC0(am->task)) {
		rc = FUNC1(am->task);
		am->task = NULL;
		FUNC4(am->ept);
		am->ept = NULL;
		return rc;
	}

	am->state = STATE_DISABLED;
	return 0;
}