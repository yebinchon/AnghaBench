#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct smb_hdr {int dummy; } ;
struct mid_q_entry {scalar_t__ mid_state; int /*<<< orphan*/ * resp_buf; scalar_t__ large_buf; int /*<<< orphan*/  callback; } ;
struct kvec {char* iov_base; scalar_t__ iov_len; } ;
struct cifs_ses {TYPE_1__* server; } ;
struct TYPE_10__ {scalar_t__ tcpStatus; int sequence_number; int /*<<< orphan*/  srv_mutex; } ;

/* Variables and functions */
 int CIFS_ASYNC_OP ; 
 int CIFS_LARGE_BUFFER ; 
 int const CIFS_LOG_ERROR ; 
 int CIFS_NO_BUFFER ; 
 int const CIFS_NO_RESP ; 
 int CIFS_SMALL_BUFFER ; 
 int const CIFS_TIMEOUT_MASK ; 
 scalar_t__ CifsExiting ; 
 int /*<<< orphan*/  DeleteMidQEntry ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 scalar_t__ FUNC0 (struct mid_q_entry*) ; 
 scalar_t__ MID_REQUEST_SUBMITTED ; 
 scalar_t__ MID_RESPONSE_RECEIVED ; 
 int FUNC1 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (struct mid_q_entry*,TYPE_1__*,int const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct mid_q_entry*) ; 
 struct mid_q_entry* FUNC9 (struct cifs_ses*,struct smb_rqst*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (struct mid_q_entry*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct mid_q_entry*) ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,struct smb_hdr*,struct mid_q_entry*) ; 
 int FUNC17 (TYPE_1__*,struct kvec*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (TYPE_1__*,int) ; 
 int FUNC21 (TYPE_1__*,struct mid_q_entry*) ; 

int
FUNC22(const unsigned int xid, struct cifs_ses *ses,
	     struct kvec *iov, int n_vec, int *pRespBufType /* ret */,
	     const int flags)
{
	int rc = 0;
	int long_op;
	struct mid_q_entry *midQ;
	char *buf = iov[0].iov_base;
	struct smb_rqst rqst = { .rq_iov = iov,
				 .rq_nvec = n_vec };

	long_op = flags & CIFS_TIMEOUT_MASK;

	*pRespBufType = CIFS_NO_BUFFER;  /* no response buf yet */

	if ((ses == NULL) || (ses->server == NULL)) {
		FUNC10(buf);
		FUNC2(1, "Null session");
		return -EIO;
	}

	if (ses->server->tcpStatus == CifsExiting) {
		FUNC10(buf);
		return -ENOENT;
	}

	/*
	 * Ensure that we do not send more than 50 overlapping requests
	 * to the same server. We may make this configurable later or
	 * use ses->maxReq.
	 */

	rc = FUNC20(ses->server, long_op);
	if (rc) {
		FUNC10(buf);
		return rc;
	}

	/*
	 * Make sure that we sign in the same order that we send on this socket
	 * and avoid races inside tcp sendmsg code that could cause corruption
	 * of smb data.
	 */

	FUNC14(&ses->server->srv_mutex);

	midQ = FUNC9(ses, &rqst);
	if (FUNC0(midQ)) {
		FUNC15(&ses->server->srv_mutex);
		FUNC10(buf);
		/* Update # of requests on wire to server */
		FUNC4(ses->server, 1);
		return FUNC1(midQ);
	}

	midQ->mid_state = MID_REQUEST_SUBMITTED;
	FUNC7(ses->server);
	rc = FUNC17(ses->server, iov, n_vec);
	FUNC6(ses->server);
	FUNC8(midQ);

	if (rc < 0)
		ses->server->sequence_number -= 2;
	FUNC15(&ses->server->srv_mutex);

	if (rc < 0) {
		FUNC10(buf);
		goto out;
	}

	if (long_op == CIFS_ASYNC_OP) {
		FUNC10(buf);
		goto out;
	}

	rc = FUNC21(ses->server, midQ);
	if (rc != 0) {
		FUNC16(ses->server, (struct smb_hdr *)buf, midQ);
		FUNC18(&GlobalMid_Lock);
		if (midQ->mid_state == MID_REQUEST_SUBMITTED) {
			midQ->callback = DeleteMidQEntry;
			FUNC19(&GlobalMid_Lock);
			FUNC10(buf);
			FUNC4(ses->server, 1);
			return rc;
		}
		FUNC19(&GlobalMid_Lock);
	}

	FUNC10(buf);

	rc = FUNC11(midQ, ses->server);
	if (rc != 0) {
		FUNC4(ses->server, 1);
		return rc;
	}

	if (!midQ->resp_buf || midQ->mid_state != MID_RESPONSE_RECEIVED) {
		rc = -EIO;
		FUNC3(1, "Bad MID state?");
		goto out;
	}

	buf = (char *)midQ->resp_buf;
	iov[0].iov_base = buf;
	iov[0].iov_len = FUNC13(buf) + 4;
	if (midQ->large_buf)
		*pRespBufType = CIFS_LARGE_BUFFER;
	else
		*pRespBufType = CIFS_SMALL_BUFFER;

	rc = FUNC5(midQ, ses->server, flags & CIFS_LOG_ERROR);

	/* mark it so buf will not be freed by delete_mid */
	if ((flags & CIFS_NO_RESP) == 0)
		midQ->resp_buf = NULL;
out:
	FUNC12(midQ);
	FUNC4(ses->server, 1);

	return rc;
}