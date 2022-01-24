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
struct smb_hdr {scalar_t__ Command; int /*<<< orphan*/  smb_buf_length; } ;
struct mid_q_entry {scalar_t__ mid_state; int /*<<< orphan*/  resp_buf; int /*<<< orphan*/  callback; int /*<<< orphan*/  sequence_number; } ;
struct cifs_tcon {struct cifs_ses* ses; } ;
struct cifs_ses {TYPE_1__* server; } ;
struct TYPE_10__ {scalar_t__ tcpStatus; int /*<<< orphan*/  response_q; int /*<<< orphan*/  srv_mutex; } ;

/* Variables and functions */
 int CIFSMaxBufSize ; 
 int /*<<< orphan*/  CIFS_BLOCKING_OP ; 
 scalar_t__ CifsExiting ; 
 scalar_t__ CifsGood ; 
 scalar_t__ CifsNew ; 
 int /*<<< orphan*/  DeleteMidQEntry ; 
 int EACCES ; 
 int EIO ; 
 int ENOENT ; 
 int ENOLCK ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 int MAX_CIFS_HDR_SIZE ; 
 scalar_t__ MID_REQUEST_SUBMITTED ; 
 scalar_t__ MID_RESPONSE_RECEIVED ; 
 scalar_t__ SMB_COM_TRANSACTION2 ; 
 int FUNC0 (struct cifs_ses*,struct smb_hdr*,struct mid_q_entry**) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (struct mid_q_entry*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mid_q_entry*) ; 
 int FUNC7 (struct smb_hdr*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct mid_q_entry*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct mid_q_entry*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (unsigned int const,struct cifs_tcon*,struct smb_hdr*,struct smb_hdr*) ; 
 int FUNC15 (TYPE_1__*,struct smb_hdr*,struct mid_q_entry*) ; 
 int FUNC16 (TYPE_1__*,struct smb_hdr*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ,int) ; 
 int FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC21 (TYPE_1__*,struct mid_q_entry*) ; 

int
FUNC22(const unsigned int xid, struct cifs_tcon *tcon,
	    struct smb_hdr *in_buf, struct smb_hdr *out_buf,
	    int *pbytes_returned)
{
	int rc = 0;
	int rstart = 0;
	struct mid_q_entry *midQ;
	struct cifs_ses *ses;

	if (tcon == NULL || tcon->ses == NULL) {
		FUNC2(1, "Null smb session");
		return -EIO;
	}
	ses = tcon->ses;

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

	rc = FUNC20(ses->server, CIFS_BLOCKING_OP);
	if (rc)
		return rc;

	/* make sure that we sign in the same order that we send on this socket
	   and avoid races inside tcp sendmsg code that could cause corruption
	   of smb data */

	FUNC12(&ses->server->srv_mutex);

	rc = FUNC0(ses, in_buf, &midQ);
	if (rc) {
		FUNC13(&ses->server->srv_mutex);
		return rc;
	}

	rc = FUNC7(in_buf, ses->server, &midQ->sequence_number);
	if (rc) {
		FUNC9(midQ);
		FUNC13(&ses->server->srv_mutex);
		return rc;
	}

	midQ->mid_state = MID_REQUEST_SUBMITTED;
	FUNC5(ses->server);
	rc = FUNC16(ses->server, in_buf, FUNC1(in_buf->smb_buf_length));
	FUNC4(ses->server);
	FUNC6(midQ);
	FUNC13(&ses->server->srv_mutex);

	if (rc < 0) {
		FUNC9(midQ);
		return rc;
	}

	/* Wait for a reply - allow signals to interrupt. */
	rc = FUNC19(ses->server->response_q,
		(!(midQ->mid_state == MID_REQUEST_SUBMITTED)) ||
		((ses->server->tcpStatus != CifsGood) &&
		 (ses->server->tcpStatus != CifsNew)));

	/* Were we interrupted by a signal ? */
	if ((rc == -ERESTARTSYS) &&
		(midQ->mid_state == MID_REQUEST_SUBMITTED) &&
		((ses->server->tcpStatus == CifsGood) ||
		 (ses->server->tcpStatus == CifsNew))) {

		if (in_buf->Command == SMB_COM_TRANSACTION2) {
			/* POSIX lock. We send a NT_CANCEL SMB to cause the
			   blocking lock to return. */
			rc = FUNC15(ses->server, in_buf, midQ);
			if (rc) {
				FUNC9(midQ);
				return rc;
			}
		} else {
			/* Windows lock. We send a LOCKINGX_CANCEL_LOCK
			   to cause the blocking lock to return. */

			rc = FUNC14(xid, tcon, in_buf, out_buf);

			/* If we get -ENOLCK back the lock may have
			   already been removed. Don't exit in this case. */
			if (rc && rc != -ENOLCK) {
				FUNC9(midQ);
				return rc;
			}
		}

		rc = FUNC21(ses->server, midQ);
		if (rc) {
			FUNC15(ses->server, in_buf, midQ);
			FUNC17(&GlobalMid_Lock);
			if (midQ->mid_state == MID_REQUEST_SUBMITTED) {
				/* no longer considered to be "in-flight" */
				midQ->callback = DeleteMidQEntry;
				FUNC18(&GlobalMid_Lock);
				return rc;
			}
			FUNC18(&GlobalMid_Lock);
		}

		/* We got the response - restart system call. */
		rstart = 1;
	}

	rc = FUNC8(midQ, ses->server);
	if (rc != 0)
		return rc;

	/* rcvd frame is ok */
	if (out_buf == NULL || midQ->mid_state != MID_RESPONSE_RECEIVED) {
		rc = -EIO;
		FUNC2(1, "Bad MID state?");
		goto out;
	}

	*pbytes_returned = FUNC10(midQ->resp_buf);
	FUNC11(out_buf, midQ->resp_buf, *pbytes_returned + 4);
	rc = FUNC3(midQ, ses->server, 0);
out:
	FUNC9(midQ);
	if (rstart && rc == -EACCES)
		return -ERESTARTSYS;
	return rc;
}