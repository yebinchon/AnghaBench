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
struct smb_rqst {int dummy; } ;
struct mid_q_entry {int /*<<< orphan*/  qhead; int /*<<< orphan*/  mid_state; void* callback_data; int /*<<< orphan*/ * callback; int /*<<< orphan*/ * receive; } ;
struct TCP_Server_Info {int sequence_number; int /*<<< orphan*/  request_q; int /*<<< orphan*/  srv_mutex; int /*<<< orphan*/  pending_mid_q; } ;
typedef  int /*<<< orphan*/  mid_receive_t ;
typedef  int /*<<< orphan*/  mid_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  CIFS_ASYNC_OP ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 scalar_t__ FUNC0 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  MID_REQUEST_SUBMITTED ; 
 int FUNC1 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct TCP_Server_Info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC4 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC5 (struct mid_q_entry*) ; 
 struct mid_q_entry* FUNC6 (struct TCP_Server_Info*,struct smb_rqst*) ; 
 int /*<<< orphan*/  FUNC7 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct TCP_Server_Info*,struct smb_rqst*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct TCP_Server_Info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int
FUNC16(struct TCP_Server_Info *server, struct smb_rqst *rqst,
		mid_receive_t *receive, mid_callback_t *callback,
		void *cbdata, bool ignore_pend)
{
	int rc;
	struct mid_q_entry *mid;

	rc = FUNC14(server, ignore_pend ? CIFS_ASYNC_OP : 0);
	if (rc)
		return rc;

	FUNC9(&server->srv_mutex);
	mid = FUNC6(server, rqst);
	if (FUNC0(mid)) {
		FUNC10(&server->srv_mutex);
		FUNC2(server, 1);
		FUNC15(&server->request_q);
		return FUNC1(mid);
	}

	mid->receive = receive;
	mid->callback = callback;
	mid->callback_data = cbdata;
	mid->mid_state = MID_REQUEST_SUBMITTED;

	/* put it on the pending_mid_q */
	FUNC12(&GlobalMid_Lock);
	FUNC8(&mid->qhead, &server->pending_mid_q);
	FUNC13(&GlobalMid_Lock);

	FUNC4(server);
	rc = FUNC11(server, rqst);
	FUNC3(server);
	FUNC5(mid);

	if (rc < 0)
		server->sequence_number -= 2;
	FUNC10(&server->srv_mutex);

	if (rc == 0)
		return 0;

	FUNC7(mid);
	FUNC2(server, 1);
	FUNC15(&server->request_q);
	return rc;
}