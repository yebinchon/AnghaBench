#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct smb_hdr {int /*<<< orphan*/  smb_buf_length; } ;
struct mid_q_entry {scalar_t__ mid_state; int /*<<< orphan*/  resp_buf; int /*<<< orphan*/  callback; int /*<<< orphan*/  sequence_number; } ;
struct cifs_ses {TYPE_1__* server; } ;
struct TYPE_11__ {scalar_t__ tcpStatus; int sequence_number; int /*<<< orphan*/  srv_mutex; } ;

/* Variables and functions */
 int CIFSMaxBufSize ; 
 int const CIFS_ASYNC_OP ; 
 scalar_t__ CifsExiting ; 
 int /*<<< orphan*/  DeleteMidQEntry ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 int MAX_CIFS_HDR_SIZE ; 
 scalar_t__ MID_REQUEST_SUBMITTED ; 
 scalar_t__ MID_RESPONSE_RECEIVED ; 
 int FUNC0 (struct cifs_ses*,struct smb_hdr*,struct mid_q_entry**) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (struct mid_q_entry*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct mid_q_entry*) ; 
 int FUNC8 (struct smb_hdr*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mid_q_entry*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct mid_q_entry*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct smb_hdr*,struct mid_q_entry*) ; 
 int FUNC16 (TYPE_1__*,struct smb_hdr*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_1__*,int const) ; 
 int FUNC20 (TYPE_1__*,struct mid_q_entry*) ; 

int
FUNC21(const unsigned int xid, struct cifs_ses *ses,
	    struct smb_hdr *in_buf, struct smb_hdr *out_buf,
	    int *pbytes_returned, const int long_op)
{
	int rc = 0;
	struct mid_q_entry *midQ;

	if (ses == NULL) {
		FUNC2(1, "Null smb session");
		return -EIO;
	}
	if (ses->server == NULL) {
		FUNC2(1, "Null tcp session");
		return -EIO;
	}

	if (ses->server->tcpStatus == CifsExiting)
		return -ENOENT;

	/* Ensure that we do not send more than 50 overlapping requests
	   to the same server. We may make this configurable later or
	   use ses->maxReq */

	if (FUNC1(in_buf->smb_buf_length) > CIFSMaxBufSize +
			MAX_CIFS_HDR_SIZE - 4) {
		FUNC2(1, "Illegal length, greater than maximum frame, %d",
			   FUNC1(in_buf->smb_buf_length));
		return -EIO;
	}

	rc = FUNC19(ses->server, long_op);
	if (rc)
		return rc;

	/* make sure that we sign in the same order that we send on this socket
	   and avoid races inside tcp sendmsg code that could cause corruption
	   of smb data */

	FUNC13(&ses->server->srv_mutex);

	rc = FUNC0(ses, in_buf, &midQ);
	if (rc) {
		FUNC14(&ses->server->srv_mutex);
		/* Update # of requests on wire to server */
		FUNC3(ses->server, 1);
		return rc;
	}

	rc = FUNC8(in_buf, ses->server, &midQ->sequence_number);
	if (rc) {
		FUNC14(&ses->server->srv_mutex);
		goto out;
	}

	midQ->mid_state = MID_REQUEST_SUBMITTED;

	FUNC6(ses->server);
	rc = FUNC16(ses->server, in_buf, FUNC1(in_buf->smb_buf_length));
	FUNC5(ses->server);
	FUNC7(midQ);

	if (rc < 0)
		ses->server->sequence_number -= 2;

	FUNC14(&ses->server->srv_mutex);

	if (rc < 0)
		goto out;

	if (long_op == CIFS_ASYNC_OP)
		goto out;

	rc = FUNC20(ses->server, midQ);
	if (rc != 0) {
		FUNC15(ses->server, in_buf, midQ);
		FUNC17(&GlobalMid_Lock);
		if (midQ->mid_state == MID_REQUEST_SUBMITTED) {
			/* no longer considered to be "in-flight" */
			midQ->callback = DeleteMidQEntry;
			FUNC18(&GlobalMid_Lock);
			FUNC3(ses->server, 1);
			return rc;
		}
		FUNC18(&GlobalMid_Lock);
	}

	rc = FUNC9(midQ, ses->server);
	if (rc != 0) {
		FUNC3(ses->server, 1);
		return rc;
	}

	if (!midQ->resp_buf || !out_buf ||
	    midQ->mid_state != MID_RESPONSE_RECEIVED) {
		rc = -EIO;
		FUNC2(1, "Bad MID state?");
		goto out;
	}

	*pbytes_returned = FUNC11(midQ->resp_buf);
	FUNC12(out_buf, midQ->resp_buf, *pbytes_returned + 4);
	rc = FUNC4(midQ, ses->server, 0);
out:
	FUNC10(midQ);
	FUNC3(ses->server, 1);

	return rc;
}