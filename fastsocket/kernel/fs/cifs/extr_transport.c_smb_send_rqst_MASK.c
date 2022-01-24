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
typedef  int /*<<< orphan*/  val ;
struct socket {int dummy; } ;
struct smb_rqst {int rq_nvec; unsigned int rq_npages; int /*<<< orphan*/ * rq_pages; struct kvec* rq_iov; } ;
struct kvec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;
struct TCP_Server_Info {int /*<<< orphan*/  tcpStatus; struct socket* ssocket; } ;

/* Variables and functions */
 int /*<<< orphan*/  CifsNeedReconnect ; 
 int EINTR ; 
 int EIO ; 
 int ENOTSOCK ; 
 int /*<<< orphan*/  SOL_TCP ; 
 int /*<<< orphan*/  TCP_CORK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_rqst*,unsigned int,struct kvec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (struct smb_rqst*) ; 
 int FUNC9 (struct TCP_Server_Info*,struct kvec*,int,size_t*) ; 

__attribute__((used)) static int
FUNC10(struct TCP_Server_Info *server, struct smb_rqst *rqst)
{
	int rc;
	struct kvec *iov = rqst->rq_iov;
	int n_vec = rqst->rq_nvec;
	unsigned int smb_buf_length = FUNC5(iov[0].iov_base);
	unsigned long send_length;
	unsigned int i;
	size_t total_len = 0, sent;
	struct socket *ssocket = server->ssocket;
	int val = 1;

	if (ssocket == NULL)
		return -ENOTSOCK;

	/* sanity check send length */
	send_length = FUNC8(rqst);
	if (send_length != smb_buf_length + 4) {
		FUNC0(1, "Send length mismatch(send_length=%lu smb_buf_length=%u)\n", send_length, smb_buf_length);
		return -EIO;
	}

	FUNC2(1, "Sending smb: smb_len=%u", smb_buf_length);
	FUNC4(iov[0].iov_base, iov[0].iov_len);

	/* cork the socket */
	FUNC6(ssocket, SOL_TCP, TCP_CORK,
				(char *)&val, sizeof(val));

	rc = FUNC9(server, iov, n_vec, &sent);
	if (rc < 0)
		goto uncork;

	total_len += sent;

	/* now walk the page array and send each page in it */
	for (i = 0; i < rqst->rq_npages; i++) {
		struct kvec p_iov;

		FUNC3(rqst, i, &p_iov);
		rc = FUNC9(server, &p_iov, 1, &sent);
		FUNC7(rqst->rq_pages[i]);
		if (rc < 0)
			break;

		total_len += sent;
	}

uncork:
	/* uncork it */
	val = 0;
	FUNC6(ssocket, SOL_TCP, TCP_CORK,
				(char *)&val, sizeof(val));

	if ((total_len > 0) && (total_len != smb_buf_length + 4)) {
		FUNC2(1, "partial send (wanted=%u sent=%zu): terminating "
			"session", smb_buf_length + 4, total_len);
		/*
		 * If we have only sent part of an SMB then the next SMB could
		 * be taken as the remainder of this one. We need to kill the
		 * socket so the server throws away the partial SMB
		 */
		server->tcpStatus = CifsNeedReconnect;
	}

	if (rc < 0 && rc != -EINTR)
		FUNC1(1, "Error %d sending data on socket to server", rc);
	else
		rc = 0;

	return rc;
}