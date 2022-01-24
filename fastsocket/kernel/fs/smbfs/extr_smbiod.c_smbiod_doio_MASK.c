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
struct smb_sb_info {scalar_t__ state; scalar_t__ rstate; int /*<<< orphan*/  xmitq; } ;

/* Variables and functions */
 void* CONN_INVALID ; 
 scalar_t__ CONN_VALID ; 
 int /*<<< orphan*/  SMBIOD_DATA_READY ; 
 scalar_t__ SMB_RECV_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct smb_sb_info*) ; 
 int FUNC3 (struct smb_sb_info*) ; 
 int FUNC4 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  smbiod_flags ; 
 int /*<<< orphan*/  FUNC5 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_sb_info*) ; 

__attribute__((used)) static void FUNC7(struct smb_sb_info *server)
{
	int result;
	int maxwork = 7;

	if (server->state != CONN_VALID)
		goto out;

	do {
		result = FUNC3(server);
		if (result < 0) {
			server->state = CONN_INVALID;
			FUNC6(server);
			goto out;	/* reconnecting is slow */
		} else if (server->rstate == SMB_RECV_REQUEST)
			FUNC5(server);
	} while (result > 0 && maxwork-- > 0);

	/*
	 * If there is more to read then we want to be sure to wake up again.
	 */
	if (server->state != CONN_VALID)
		goto out;
	if (FUNC2(server) > 0)
		FUNC1(SMBIOD_DATA_READY, &smbiod_flags);

	do {
		result = FUNC4(server);
		if (result < 0) {
			server->state = CONN_INVALID;
			FUNC6(server);
			goto out;	/* reconnecting is slow */
		}
	} while (result > 0);

	/*
	 * If the last request was not sent out we want to wake up again.
	 */
	if (!FUNC0(&server->xmitq))
		FUNC1(SMBIOD_DATA_READY, &smbiod_flags);

out:
	return;
}