#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cifs_ses {int /*<<< orphan*/  session_mutex; int /*<<< orphan*/  Suid; TYPE_3__* server; scalar_t__ need_reconnect; } ;
struct TYPE_6__ {int sec_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  Uid; int /*<<< orphan*/  Flags2; int /*<<< orphan*/  Mid; } ;
struct TYPE_5__ {int AndXCommand; TYPE_1__ hdr; } ;
typedef  TYPE_2__ LOGOFF_ANDX_REQ ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int SECMODE_SIGN_ENABLED ; 
 int SECMODE_SIGN_REQUIRED ; 
 int /*<<< orphan*/  SMBFLG2_SECURITY_SIGNATURE ; 
 int /*<<< orphan*/  SMB_COM_LOGOFF_ANDX ; 
 int FUNC1 (int const,struct cifs_ses*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,void**) ; 

int
FUNC6(const int xid, struct cifs_ses *ses)
{
	LOGOFF_ANDX_REQ *pSMB;
	int rc = 0;

	FUNC2(1, "In SMBLogoff for session disconnect");

	/*
	 * BB: do we need to check validity of ses and server? They should
	 * always be valid since we have an active reference. If not, that
	 * should probably be a BUG()
	 */
	if (!ses || !ses->server)
		return -EIO;

	FUNC3(&ses->session_mutex);
	if (ses->need_reconnect)
		goto session_already_dead; /* no need to send SMBlogoff if uid
					      already closed due to reconnect */
	rc = FUNC5(SMB_COM_LOGOFF_ANDX, 2, NULL, (void **)&pSMB);
	if (rc) {
		FUNC4(&ses->session_mutex);
		return rc;
	}

	pSMB->hdr.Mid = FUNC0(ses->server);

	if (ses->server->sec_mode &
		   (SECMODE_SIGN_REQUIRED | SECMODE_SIGN_ENABLED))
			pSMB->hdr.Flags2 |= SMBFLG2_SECURITY_SIGNATURE;

	pSMB->hdr.Uid = ses->Suid;

	pSMB->AndXCommand = 0xFF;
	rc = FUNC1(xid, ses, (char *) pSMB, 0);
session_already_dead:
	FUNC4(&ses->session_mutex);

	/* if session dead then we do not need to do ulogoff,
		since server closed smb session, no sense reporting
		error */
	if (rc == -EAGAIN)
		rc = 0;
	return rc;
}