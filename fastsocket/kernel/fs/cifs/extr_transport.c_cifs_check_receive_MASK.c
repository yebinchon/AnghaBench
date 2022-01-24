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
struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct mid_q_entry {int /*<<< orphan*/  resp_buf; scalar_t__ sequence_number; } ;
struct kvec {unsigned int iov_len; int /*<<< orphan*/  iov_base; } ;
struct TCP_Server_Info {int sec_mode; } ;

/* Variables and functions */
 int SECMODE_SIGN_ENABLED ; 
 int SECMODE_SIGN_REQUIRED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (struct smb_rqst*,struct TCP_Server_Info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  u32 ; 

int
FUNC6(struct mid_q_entry *mid, struct TCP_Server_Info *server,
		   bool log_error)
{
	unsigned int len = FUNC3(mid->resp_buf) + 4;

	FUNC2(mid->resp_buf, FUNC5(u32, 92, len));

	/* convert the length into a more usable form */
	if (server->sec_mode & (SECMODE_SIGN_REQUIRED | SECMODE_SIGN_ENABLED)) {
		struct kvec iov;
		int rc = 0;
		struct smb_rqst rqst = { .rq_iov = &iov,
					 .rq_nvec = 1 };

		iov.iov_base = mid->resp_buf;
		iov.iov_len = len;
		/* FIXME: add code to kill session */
		rc = FUNC1(&rqst, server,
					   mid->sequence_number + 1);
		if (rc)
			FUNC0(1, "SMB signature verification returned error = "
			       "%d", rc);
	}

	/* BB special case reconnect tid and uid here? */
	return FUNC4(mid->resp_buf, log_error);
}