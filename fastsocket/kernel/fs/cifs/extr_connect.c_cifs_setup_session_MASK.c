#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nls_table {int dummy; } ;
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/ * response; } ;
struct cifs_ses {int need_reconnect; int /*<<< orphan*/ * ntlmssp; TYPE_2__ auth_key; int /*<<< orphan*/  status; struct TCP_Server_Info* server; int /*<<< orphan*/  capabilities; scalar_t__ flags; } ;
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/ * response; } ;
struct TCP_Server_Info {int session_estab; int sequence_number; int /*<<< orphan*/  srv_mutex; TYPE_1__ session_key; int /*<<< orphan*/  timeAdj; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  sec_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_UNIX ; 
 int FUNC0 (unsigned int,struct cifs_ses*,struct nls_table*) ; 
 int /*<<< orphan*/  CifsGood ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ linuxExtEnabled ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(unsigned int xid, struct cifs_ses *ses,
			struct nls_table *nls_info)
{
	int rc = 0;
	struct TCP_Server_Info *server = ses->server;

	ses->flags = 0;
	ses->capabilities = server->capabilities;
	if (linuxExtEnabled == 0)
		ses->capabilities &= (~CAP_UNIX);

	FUNC2(1, "Security Mode: 0x%x Capabilities: 0x%x TimeAdjust: %d",
		 server->sec_mode, server->capabilities, server->timeAdj);

	rc = FUNC0(xid, ses, nls_info);
	if (rc) {
		FUNC1(1, "Send error in SessSetup = %d", rc);
	} else {
		FUNC4(&ses->server->srv_mutex);
		if (!server->session_estab) {
			server->session_key.response = ses->auth_key.response;
			server->session_key.len = ses->auth_key.len;
			server->sequence_number = 0x2;
			server->session_estab = true;
			ses->auth_key.response = NULL;
		}
		FUNC5(&server->srv_mutex);

		FUNC2(1, "CIFS Session Established successfully");
		FUNC6(&GlobalMid_Lock);
		ses->status = CifsGood;
		ses->need_reconnect = false;
		FUNC7(&GlobalMid_Lock);
	}

	FUNC3(ses->auth_key.response);
	ses->auth_key.response = NULL;
	ses->auth_key.len = 0;
	FUNC3(ses->ntlmssp);
	ses->ntlmssp = NULL;

	return rc;
}