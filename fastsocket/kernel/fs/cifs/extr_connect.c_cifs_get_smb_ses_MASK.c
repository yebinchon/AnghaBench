#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct smb_vol {int /*<<< orphan*/  local_nls; int /*<<< orphan*/  secFlg; int /*<<< orphan*/  linux_uid; int /*<<< orphan*/  cred_uid; scalar_t__ domainname; scalar_t__ password; scalar_t__ username; } ;
struct cifs_ses {int /*<<< orphan*/  smb_ses_list; int /*<<< orphan*/  session_mutex; int /*<<< orphan*/  overrideSecFlg; int /*<<< orphan*/  linux_uid; int /*<<< orphan*/  cred_uid; void* domainName; void* password; void* user_name; int /*<<< orphan*/  serverName; struct TCP_Server_Info* server; scalar_t__ need_reconnect; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {scalar_t__ ss_family; } ;
struct TCP_Server_Info {int /*<<< orphan*/  smb_ses_list; TYPE_1__ dstaddr; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int ENOMEM ; 
 struct cifs_ses* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 struct cifs_ses* FUNC4 (struct TCP_Server_Info*,struct smb_vol*) ; 
 int FUNC5 (int,struct cifs_ses*) ; 
 int /*<<< orphan*/  FUNC6 (struct cifs_ses*) ; 
 int /*<<< orphan*/  FUNC7 (struct TCP_Server_Info*) ; 
 int FUNC8 (int,struct cifs_ses*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cifs_tcp_ses_lock ; 
 void* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct cifs_ses* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct cifs_ses*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cifs_ses *
FUNC18(struct TCP_Server_Info *server, struct smb_vol *volume_info)
{
	int rc = -ENOMEM, xid;
	struct cifs_ses *ses;
	struct sockaddr_in *addr = (struct sockaddr_in *)&server->dstaddr;
	struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *)&server->dstaddr;

	xid = FUNC2();

	ses = FUNC4(server, volume_info);
	if (ses) {
		FUNC3(1, "Existing smb sess found (status=%d)", ses->status);

		FUNC11(&ses->session_mutex);
		rc = FUNC5(xid, ses);
		if (rc) {
			FUNC12(&ses->session_mutex);
			/* problem -- put our ses reference */
			FUNC6(ses);
			FUNC1(xid);
			return FUNC0(rc);
		}
		if (ses->need_reconnect) {
			FUNC3(1, "Session needs reconnect");
			rc = FUNC8(xid, ses,
						volume_info->local_nls);
			if (rc) {
				FUNC12(&ses->session_mutex);
				/* problem -- put our reference */
				FUNC6(ses);
				FUNC1(xid);
				return FUNC0(rc);
			}
		}
		FUNC12(&ses->session_mutex);

		/* existing SMB ses has a server reference already */
		FUNC7(server);
		FUNC1(xid);
		return ses;
	}

	FUNC3(1, "Existing smb sess not found");
	ses = FUNC13();
	if (ses == NULL)
		goto get_ses_fail;

	/* new SMB session uses our server ref */
	ses->server = server;
	if (server->dstaddr.ss_family == AF_INET6)
		FUNC17(ses->serverName, "%pI6", &addr6->sin6_addr);
	else
		FUNC17(ses->serverName, "%pI4", &addr->sin_addr);

	if (volume_info->username) {
		ses->user_name = FUNC9(volume_info->username, GFP_KERNEL);
		if (!ses->user_name)
			goto get_ses_fail;
	}

	/* volume_info->password freed at unmount */
	if (volume_info->password) {
		ses->password = FUNC9(volume_info->password, GFP_KERNEL);
		if (!ses->password)
			goto get_ses_fail;
	}
	if (volume_info->domainname) {
		ses->domainName = FUNC9(volume_info->domainname, GFP_KERNEL);
		if (!ses->domainName)
			goto get_ses_fail;
	}
	ses->cred_uid = volume_info->cred_uid;
	ses->linux_uid = volume_info->linux_uid;
	ses->overrideSecFlg = volume_info->secFlg;

	FUNC11(&ses->session_mutex);
	rc = FUNC5(xid, ses);
	if (!rc)
		rc = FUNC8(xid, ses, volume_info->local_nls);
	FUNC12(&ses->session_mutex);
	if (rc)
		goto get_ses_fail;

	/* success, put it on the list */
	FUNC15(&cifs_tcp_ses_lock);
	FUNC10(&ses->smb_ses_list, &server->smb_ses_list);
	FUNC16(&cifs_tcp_ses_lock);

	FUNC1(xid);
	return ses;

get_ses_fail:
	FUNC14(ses);
	FUNC1(xid);
	return FUNC0(rc);
}