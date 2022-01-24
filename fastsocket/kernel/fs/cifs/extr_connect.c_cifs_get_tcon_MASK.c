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
struct smb_vol {scalar_t__ seal; int /*<<< orphan*/  local_lease; int /*<<< orphan*/  nocase; int /*<<< orphan*/  retry; scalar_t__ nodfs; int /*<<< orphan*/  local_nls; int /*<<< orphan*/  UNC; scalar_t__ password; } ;
struct cifs_tcon {scalar_t__ seal; int Flags; int /*<<< orphan*/  tcon_list; int /*<<< orphan*/  local_lease; int /*<<< orphan*/  nocase; int /*<<< orphan*/  retry; int /*<<< orphan*/  password; struct cifs_ses* ses; } ;
struct cifs_ses {int /*<<< orphan*/  tcon_list; } ;

/* Variables and functions */
 int FUNC0 (int,struct cifs_ses*,int /*<<< orphan*/ ,struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct cifs_tcon* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC3 () ; 
 int SMB_SHARE_IS_IN_DFS ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 struct cifs_tcon* FUNC6 (struct cifs_ses*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC8 (struct cifs_ses*) ; 
 int /*<<< orphan*/  cifs_tcp_ses_lock ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,char) ; 
 struct cifs_tcon* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct cifs_tcon*) ; 

__attribute__((used)) static struct cifs_tcon *
FUNC16(struct cifs_ses *ses, struct smb_vol *volume_info)
{
	int rc, xid;
	struct cifs_tcon *tcon;

	tcon = FUNC6(ses, volume_info->UNC);
	if (tcon) {
		FUNC5(1, "Found match on UNC path");
		/* existing tcon already has a reference */
		FUNC8(ses);
		if (tcon->seal != volume_info->seal)
			FUNC4(1, "transport encryption setting "
				   "conflicts with existing tid");
		return tcon;
	}

	tcon = FUNC14();
	if (tcon == NULL) {
		rc = -ENOMEM;
		goto out_fail;
	}

	tcon->ses = ses;
	if (volume_info->password) {
		tcon->password = FUNC9(volume_info->password, GFP_KERNEL);
		if (!tcon->password) {
			rc = -ENOMEM;
			goto out_fail;
		}
	}

	if (FUNC13(volume_info->UNC + 3, '\\') == NULL
	    && FUNC13(volume_info->UNC + 3, '/') == NULL) {
		FUNC4(1, "Missing share name");
		rc = -ENODEV;
		goto out_fail;
	}

	/* BB Do we need to wrap session_mutex around
	 * this TCon call and Unix SetFS as
	 * we do on SessSetup and reconnect? */
	xid = FUNC3();
	rc = FUNC0(xid, ses, volume_info->UNC, tcon, volume_info->local_nls);
	FUNC2(xid);
	FUNC5(1, "CIFS Tcon rc = %d", rc);
	if (rc)
		goto out_fail;

	if (volume_info->nodfs) {
		tcon->Flags &= ~SMB_SHARE_IS_IN_DFS;
		FUNC5(1, "DFS disabled (%d)", tcon->Flags);
	}
	tcon->seal = volume_info->seal;
	/* we can have only one retry value for a connection
	   to a share so for resources mounted more than once
	   to the same server share the last value passed in
	   for the retry flag is used */
	tcon->retry = volume_info->retry;
	tcon->nocase = volume_info->nocase;
	tcon->local_lease = volume_info->local_lease;

	FUNC11(&cifs_tcp_ses_lock);
	FUNC10(&tcon->tcon_list, &ses->tcon_list);
	FUNC12(&cifs_tcp_ses_lock);

	FUNC7(tcon);

	return tcon;

out_fail:
	FUNC15(tcon);
	return FUNC1(rc);
}