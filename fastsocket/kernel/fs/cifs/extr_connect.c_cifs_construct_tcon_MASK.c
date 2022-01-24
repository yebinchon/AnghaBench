#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uid_t ;
struct smb_vol {char* username; int linux_uid; int cred_uid; int no_linux_ext; int /*<<< orphan*/  secFlg; int /*<<< orphan*/  local_lease; int /*<<< orphan*/  nocase; int /*<<< orphan*/  retry; int /*<<< orphan*/  UNC; int /*<<< orphan*/  local_nls; } ;
struct cifs_tcon {int capabilities; TYPE_1__* ses; int /*<<< orphan*/  unix_ext; int /*<<< orphan*/  local_lease; int /*<<< orphan*/  nocase; int /*<<< orphan*/  retry; int /*<<< orphan*/  treeName; } ;
struct cifs_ses {int capabilities; TYPE_1__* ses; int /*<<< orphan*/  unix_ext; int /*<<< orphan*/  local_lease; int /*<<< orphan*/  nocase; int /*<<< orphan*/  retry; int /*<<< orphan*/  treeName; } ;
struct cifs_sb_info {int /*<<< orphan*/  local_nls; } ;
struct TYPE_5__ {int /*<<< orphan*/  srv_count; } ;
struct TYPE_4__ {TYPE_2__* server; } ;

/* Variables and functions */
 int CAP_UNIX ; 
 int /*<<< orphan*/  CIFSSEC_MUST_KRB5 ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct cifs_tcon* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct cifs_tcon*) ; 
 int /*<<< orphan*/  MAX_USERNAME_SIZE ; 
 struct cifs_tcon* FUNC2 (TYPE_2__*,struct smb_vol*) ; 
 struct cifs_tcon* FUNC3 (struct cifs_tcon*,struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct cifs_tcon* FUNC6 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  cifs_tcp_ses_lock ; 
 int /*<<< orphan*/  FUNC7 (struct smb_vol*) ; 
 struct smb_vol* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct cifs_tcon*,int /*<<< orphan*/ *,struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cifs_tcon *
FUNC13(struct cifs_sb_info *cifs_sb, uid_t fsuid)
{
	struct cifs_tcon *master_tcon = FUNC6(cifs_sb);
	struct cifs_ses *ses;
	struct cifs_tcon *tcon = NULL;
	struct smb_vol *vol_info;
	char username[MAX_USERNAME_SIZE + 1];

	vol_info = FUNC8(sizeof(*vol_info), GFP_KERNEL);
	if (vol_info == NULL) {
		tcon = FUNC0(-ENOMEM);
		goto out;
	}

	FUNC10(username, MAX_USERNAME_SIZE, "krb50x%x", fsuid);
	vol_info->username = username;
	vol_info->local_nls = cifs_sb->local_nls;
	vol_info->linux_uid = fsuid;
	vol_info->cred_uid = fsuid;
	vol_info->UNC = master_tcon->treeName;
	vol_info->retry = master_tcon->retry;
	vol_info->nocase = master_tcon->nocase;
	vol_info->local_lease = master_tcon->local_lease;
	vol_info->no_linux_ext = !master_tcon->unix_ext;

	/* FIXME: allow for other secFlg settings */
	vol_info->secFlg = CIFSSEC_MUST_KRB5;

	/* get a reference for the same TCP session */
	FUNC11(&cifs_tcp_ses_lock);
	++master_tcon->ses->server->srv_count;
	FUNC12(&cifs_tcp_ses_lock);

	ses = FUNC2(master_tcon->ses->server, vol_info);
	if (FUNC1(ses)) {
		tcon = (struct cifs_tcon *)ses;
		FUNC5(master_tcon->ses->server);
		goto out;
	}

	tcon = FUNC3(ses, vol_info);
	if (FUNC1(tcon)) {
		FUNC4(ses);
		goto out;
	}

	if (ses->capabilities & CAP_UNIX)
		FUNC9(0, tcon, NULL, vol_info);
out:
	FUNC7(vol_info);

	return tcon;
}