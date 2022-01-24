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
struct nls_table {int dummy; } ;
struct cifs_tcon {scalar_t__ tidStatus; int /*<<< orphan*/  treeName; int /*<<< orphan*/  need_reconnect; int /*<<< orphan*/  retry; struct cifs_ses* ses; } ;
struct cifs_ses {int capabilities; int /*<<< orphan*/  session_mutex; scalar_t__ need_reconnect; struct TCP_Server_Info* server; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; int /*<<< orphan*/  response_q; } ;

/* Variables and functions */
 int CAP_UNIX ; 
 int FUNC0 (int /*<<< orphan*/ ,struct cifs_ses*,int /*<<< orphan*/ ,struct cifs_tcon*,struct nls_table*) ; 
 scalar_t__ CifsExiting ; 
 scalar_t__ CifsNeedReconnect ; 
 int EAGAIN ; 
 int EHOSTDOWN ; 
 int ENODEV ; 
 int HZ ; 
#define  SMB_COM_CLOSE 132 
#define  SMB_COM_FIND_CLOSE2 131 
#define  SMB_COM_LOCKING_ANDX 130 
 int SMB_COM_OPEN_ANDX ; 
#define  SMB_COM_READ_ANDX 129 
 int SMB_COM_TREE_DISCONNECT ; 
#define  SMB_COM_WRITE_ANDX 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct cifs_ses*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct cifs_ses*,struct nls_table*) ; 
 struct nls_table* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct cifs_tcon*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tconInfoReconnectCount ; 
 int /*<<< orphan*/  FUNC10 (struct nls_table*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC12(struct cifs_tcon *tcon, int smb_command)
{
	int rc = 0;
	struct cifs_ses *ses;
	struct TCP_Server_Info *server;
	struct nls_table *nls_codepage;

	/*
	 * SMBs NegProt, SessSetup, uLogoff do not have tcon yet so check for
	 * tcp and smb session status done differently for those three - in the
	 * calling routine
	 */
	if (!tcon)
		return 0;

	ses = tcon->ses;
	server = ses->server;

	/*
	 * only tree disconnect, open, and write, (and ulogoff which does not
	 * have tcon) are allowed as we start force umount
	 */
	if (tcon->tidStatus == CifsExiting) {
		if (smb_command != SMB_COM_WRITE_ANDX &&
		    smb_command != SMB_COM_OPEN_ANDX &&
		    smb_command != SMB_COM_TREE_DISCONNECT) {
			FUNC2(1, "can not send cmd %d while umounting",
				smb_command);
			return -ENODEV;
		}
	}

	/*
	 * Give demultiplex thread up to 10 seconds to reconnect, should be
	 * greater than cifs socket timeout which is 7 seconds
	 */
	while (server->tcpStatus == CifsNeedReconnect) {
		FUNC11(server->response_q,
			(server->tcpStatus != CifsNeedReconnect), 10 * HZ);

		/* are we still trying to reconnect? */
		if (server->tcpStatus != CifsNeedReconnect)
			break;

		/*
		 * on "soft" mounts we wait once. Hard mounts keep
		 * retrying until process is killed or server comes
		 * back on-line
		 */
		if (!tcon->retry) {
			FUNC2(1, "gave up waiting on reconnect in smb_init");
			return -EHOSTDOWN;
		}
	}

	if (!ses->need_reconnect && !tcon->need_reconnect)
		return 0;

	nls_codepage = FUNC5();

	/*
	 * need to prevent multiple threads trying to simultaneously
	 * reconnect the same SMB session
	 */
	FUNC7(&ses->session_mutex);
	rc = FUNC3(0, ses);
	if (rc == 0 && ses->need_reconnect)
		rc = FUNC4(0, ses, nls_codepage);

	/* do we need to reconnect tcon? */
	if (rc || !tcon->need_reconnect) {
		FUNC8(&ses->session_mutex);
		goto out;
	}

	FUNC6(tcon);
	rc = FUNC0(0, ses, tcon->treeName, tcon, nls_codepage);
	FUNC8(&ses->session_mutex);
	FUNC2(1, "reconnect tcon rc = %d", rc);

	if (rc)
		goto out;

	/*
	 * FIXME: check if wsize needs updated due to negotiated smb buffer
	 * 	  size shrinking
	 */
	FUNC1(&tconInfoReconnectCount);

	/* tell server Unix caps we support */
	if (ses->capabilities & CAP_UNIX)
		FUNC9(0, tcon, NULL, NULL);

	/*
	 * Removed call to reopen open files here. It is safer (and faster) to
	 * reopen files one at a time as needed in read and write.
	 *
	 * FIXME: what about file locks? don't we need to reclaim them ASAP?
	 */

out:
	/*
	 * Check if handle based operation so we know whether we can continue
	 * or not without returning to caller to reset file handle
	 */
	switch (smb_command) {
	case SMB_COM_READ_ANDX:
	case SMB_COM_WRITE_ANDX:
	case SMB_COM_CLOSE:
	case SMB_COM_FIND_CLOSE2:
	case SMB_COM_LOCKING_ANDX:
		rc = -EAGAIN;
	}

	FUNC10(nls_codepage);
	return rc;
}