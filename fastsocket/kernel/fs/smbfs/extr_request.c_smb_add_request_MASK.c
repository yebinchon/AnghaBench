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
struct smb_sb_info {int mid; scalar_t__ state; int conn_error; int /*<<< orphan*/  xmitq; } ;
struct smb_request {scalar_t__* rq_header; int rq_flags; scalar_t__ rq_rcls; int rq_errno; int /*<<< orphan*/  rq_err; int /*<<< orphan*/  rq_mid; int /*<<< orphan*/  rq_queue; int /*<<< orphan*/  rq_wait; int /*<<< orphan*/ * rq_buffer; scalar_t__ rq_trans2_command; struct smb_sb_info* rq_server; } ;

/* Variables and functions */
 scalar_t__ CONN_INVALID ; 
 scalar_t__ CONN_VALID ; 
 int EINTR ; 
 int EIO ; 
 int ERESTARTSYS ; 
 scalar_t__ ERRSRV ; 
 int /*<<< orphan*/  ERRtimeout ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int SMB_REQ_RECEIVED ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_request*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int smb_com ; 
 int FUNC9 (struct smb_request*) ; 
 int smb_flg ; 
 int /*<<< orphan*/  FUNC10 (struct smb_sb_info*) ; 
 scalar_t__ FUNC11 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  smb_mid ; 
 int /*<<< orphan*/  smb_pid ; 
 int smb_rcls ; 
 int FUNC12 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC14 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC15 (struct smb_request*) ; 
 int FUNC16 (struct smb_request*) ; 
 int /*<<< orphan*/  smb_tid ; 
 int /*<<< orphan*/  smb_uid ; 
 int /*<<< orphan*/  FUNC17 (struct smb_sb_info*) ; 
 int smb_wct ; 
 int /*<<< orphan*/  FUNC18 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 long FUNC20 (int /*<<< orphan*/ ,int,int) ; 

int FUNC21(struct smb_request *req)
{
	long timeleft;
	struct smb_sb_info *server = req->rq_server;
	int result = 0;

	FUNC15(req);
	if (req->rq_trans2_command) {
		if (req->rq_buffer == NULL) {
			FUNC0("trans2 attempted without response buffer!\n");
			return -EIO;
		}
		result = FUNC16(req);
	}
	if (result < 0)
		return result;

#ifdef SMB_DEBUG_PACKET_SIZE
	add_xmit_stats(req);
#endif

	/* add 'req' to the queue of requests */
	if (FUNC11(server))
		return -EINTR;

	/*
	 * Try to send the request as the process. If that fails we queue the
	 * request and let smbiod send it later.
	 */

	/* FIXME: each server has a number on the maximum number of parallel
	   requests. 10, 50 or so. We should not allow more requests to be
	   active. */
	if (server->mid > 0xf000)
		server->mid = 0;
	req->rq_mid = server->mid++;
	FUNC2(req->rq_header, smb_mid, req->rq_mid);

	result = 0;
	if (server->state == CONN_VALID) {
		if (FUNC7(&server->xmitq))
			result = FUNC12(req);
		if (result < 0) {
			/* Connection lost? */
			server->conn_error = result;
			server->state = CONN_INVALID;
		}
	}
	if (result != 1)
		FUNC5(&req->rq_queue, &server->xmitq);
	FUNC13(req);

	if (server->state != CONN_VALID)
		FUNC18(server);

	FUNC17(server);

	FUNC19();

	timeleft = FUNC20(req->rq_wait,
				    req->rq_flags & SMB_REQ_RECEIVED, 30*HZ);
	if (!timeleft || FUNC8(current)) {
		/*
		 * On timeout or on interrupt we want to try and remove the
		 * request from the recvq/xmitq.
		 * First check if the request is still part of a queue. (May
		 * have been removed by some error condition)
		 */
		FUNC10(server);
		if (!FUNC7(&req->rq_queue)) {
			FUNC6(&req->rq_queue);
			FUNC14(req);
		}
		FUNC17(server);
	}

	if (!timeleft) {
		FUNC0("request [%p, mid=%d] timed out!\n",
			 req, req->rq_mid);
		FUNC1("smb_com:  %02x\n", *(req->rq_header + smb_com));
		FUNC1("smb_rcls: %02x\n", *(req->rq_header + smb_rcls));
		FUNC1("smb_flg:  %02x\n", *(req->rq_header + smb_flg));
		FUNC1("smb_tid:  %04x\n", FUNC3(req->rq_header, smb_tid));
		FUNC1("smb_pid:  %04x\n", FUNC3(req->rq_header, smb_pid));
		FUNC1("smb_uid:  %04x\n", FUNC3(req->rq_header, smb_uid));
		FUNC1("smb_mid:  %04x\n", FUNC3(req->rq_header, smb_mid));
		FUNC1("smb_wct:  %02x\n", *(req->rq_header + smb_wct));

		req->rq_rcls = ERRSRV;
		req->rq_err  = ERRtimeout;

		/* Just in case it was "stuck" */
		FUNC19();
	}
	FUNC1("woke up, rcls=%d\n", req->rq_rcls);

	if (req->rq_rcls != 0)
		req->rq_errno = FUNC9(req);
	if (FUNC8(current))
		req->rq_errno = -ERESTARTSYS;
	return req->rq_errno;
}