#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct kvec {scalar_t__ iov_len; TYPE_1__* iov_base; } ;
struct TCP_Server_Info {int dummy; } ;
struct TYPE_6__ {int Tid; int WordCount; int /*<<< orphan*/  smb_buf_length; } ;
struct TYPE_5__ {char* Data; TYPE_2__ hdr; int /*<<< orphan*/  EchoCount; } ;
typedef  TYPE_1__ ECHO_REQ ;

/* Variables and functions */
 int /*<<< orphan*/  SMB_COM_ECHO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (struct TCP_Server_Info*,struct smb_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct TCP_Server_Info*,int) ; 
 int /*<<< orphan*/  cifs_echo_callback ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

int
FUNC8(struct TCP_Server_Info *server)
{
	ECHO_REQ *smb;
	int rc = 0;
	struct kvec iov;
	struct smb_rqst rqst = { .rq_iov = &iov,
				 .rq_nvec = 1 };

	FUNC1(1, "In echo request");

	rc = FUNC7(SMB_COM_ECHO, 0, NULL, (void **)&smb);
	if (rc)
		return rc;

	/* set up echo request */
	smb->hdr.Tid = 0xffff;
	smb->hdr.WordCount = 1;
	FUNC6(1, &smb->EchoCount);
	FUNC5(1, &smb->hdr);
	smb->Data[0] = 'a';
	FUNC4(smb, 3);
	iov.iov_base = smb;
	iov.iov_len = FUNC0(smb->hdr.smb_buf_length) + 4;

	rc = FUNC2(server, &rqst, NULL, cifs_echo_callback,
			     server, true);
	if (rc)
		FUNC1(1, "Echo request failed: %d", rc);

	FUNC3(smb);

	return rc;
}