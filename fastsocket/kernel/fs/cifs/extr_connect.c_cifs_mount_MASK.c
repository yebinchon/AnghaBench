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
struct tcon_link {int /*<<< orphan*/  tl_flags; int /*<<< orphan*/  tl_time; struct cifs_tcon* tl_tcon; int /*<<< orphan*/  tl_uid; } ;
struct smb_vol {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  Capability; } ;
struct cifs_tcon {int /*<<< orphan*/  linux_uid; int /*<<< orphan*/  ipc; scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_2__* ses; } ;
struct cifs_ses {int /*<<< orphan*/  linux_uid; int /*<<< orphan*/  ipc; scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_2__* ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  prune_tlinks; int /*<<< orphan*/  tlink_tree_lock; int /*<<< orphan*/  tlink_tree; struct tcon_link* master_tlink; int /*<<< orphan*/  prepath; int /*<<< orphan*/  rsize; int /*<<< orphan*/  wsize; } ;
struct TCP_Server_Info {int /*<<< orphan*/  linux_uid; int /*<<< orphan*/  ipc; scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_2__* ses; } ;
struct TYPE_5__ {int capabilities; TYPE_1__* server; } ;
struct TYPE_4__ {scalar_t__ tcpStatus; } ;

/* Variables and functions */
 int CAP_UNIX ; 
 int /*<<< orphan*/  FUNC0 (int,struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC2 (struct cifs_sb_info*) ; 
 int CIFS_MOUNT_POSIX_PATHS ; 
 int CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP ; 
 scalar_t__ CifsNeedReconnect ; 
 int EACCES ; 
 int ELOOP ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int EREMOTE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (struct cifs_tcon*) ; 
 int MAX_NESTED_LINKS ; 
 int FUNC6 (struct cifs_tcon*) ; 
 int /*<<< orphan*/  TCON_LINK_IN_TREE ; 
 int /*<<< orphan*/  TCON_LINK_MASTER ; 
 int /*<<< orphan*/  TLINK_IDLE_EXPIRE ; 
 char* FUNC7 (struct cifs_sb_info*,struct cifs_tcon*) ; 
 struct cifs_tcon* FUNC8 (struct cifs_tcon*,struct smb_vol*) ; 
 struct cifs_tcon* FUNC9 (struct cifs_tcon*,struct smb_vol*) ; 
 struct cifs_tcon* FUNC10 (struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC11 (struct cifs_tcon*,struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC12 (struct cifs_tcon*,struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC13 (struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC14 (struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC15 (struct cifs_tcon*) ; 
 int /*<<< orphan*/  cifsiod_workqueue ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int,struct cifs_tcon*,struct smb_vol*,struct cifs_sb_info*,int) ; 
 int FUNC18 (int,struct cifs_tcon*,struct cifs_sb_info*,char*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 struct tcon_link* FUNC20 (int,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int,struct cifs_tcon*,struct cifs_sb_info*,struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,struct tcon_link*) ; 

int
FUNC28(struct cifs_sb_info *cifs_sb, struct smb_vol *volume_info)
{
	int rc;
	int xid;
	struct cifs_ses *pSesInfo;
	struct cifs_tcon *tcon;
	struct TCP_Server_Info *srvTcp;
	char   *full_path;
	struct tcon_link *tlink;
#ifdef CONFIG_CIFS_DFS_UPCALL
	int referral_walks_count = 0;
try_mount_again:
	/* cleanup activities if we're chasing a referral */
	if (referral_walks_count) {
		if (tcon)
			cifs_put_tcon(tcon);
		else if (pSesInfo)
			cifs_put_smb_ses(pSesInfo);

		FreeXid(xid);
	}
#endif
	rc = 0;
	tcon = NULL;
	pSesInfo = NULL;
	srvTcp = NULL;
	full_path = NULL;
	tlink = NULL;

	xid = FUNC4();

	/* get a reference to a tcp session */
	srvTcp = FUNC10(volume_info);
	if (FUNC5(srvTcp)) {
		rc = FUNC6(srvTcp);
		goto out;
	}

	/* get a reference to a SMB session */
	pSesInfo = FUNC8(srvTcp, volume_info);
	if (FUNC5(pSesInfo)) {
		rc = FUNC6(pSesInfo);
		pSesInfo = NULL;
		goto mount_fail_check;
	}

	/* search for existing tcon to this server share */
	tcon = FUNC9(pSesInfo, volume_info);
	if (FUNC5(tcon)) {
		rc = FUNC6(tcon);
		tcon = NULL;
		goto remote_path_check;
	}

	/* tell server which Unix caps we support */
	if (tcon->ses->capabilities & CAP_UNIX) {
		/* reset of caps checks mount to see if unix extensions
		   disabled for just this mount */
		FUNC23(xid, tcon, cifs_sb, volume_info);
		if ((tcon->ses->server->tcpStatus == CifsNeedReconnect) &&
		    (FUNC21(tcon->fsUnixInfo.Capability) &
		     CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP)) {
			rc = -EACCES;
			goto mount_fail_check;
		}
	} else
		tcon->unix_ext = 0; /* server does not support them */

	/* do not care if following two calls succeed - informational */
	if (!tcon->ipc) {
		FUNC1(xid, tcon);
		FUNC0(xid, tcon);
	}

	/* convert forward to back slashes in prepath here if needed */
	if ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_POSIX_PATHS) == 0)
		FUNC16(cifs_sb->prepath, FUNC2(cifs_sb));

	cifs_sb->wsize = FUNC12(tcon, volume_info);
	cifs_sb->rsize = FUNC11(tcon, volume_info);

remote_path_check:
#ifdef CONFIG_CIFS_DFS_UPCALL
	/*
	 * Perform an unconditional check for whether there are DFS
	 * referrals for this path without prefix, to provide support
	 * for DFS referrals from w2k8 servers which don't seem to respond
	 * with PATH_NOT_COVERED to requests that include the prefix.
	 * Chase the referral if found, otherwise continue normally.
	 */
	if (referral_walks_count == 0) {
		int refrc = expand_dfs_referral(xid, pSesInfo, volume_info,
						cifs_sb, false);
		if (!refrc) {
			referral_walks_count++;
			goto try_mount_again;
		}
	}
#endif

	/* check if a whole path (including prepath) is not remote */
	if (!rc && tcon) {
		/* build_path_to_root works only when we have a valid tcon */
		full_path = FUNC7(cifs_sb, tcon);
		if (full_path == NULL) {
			rc = -ENOMEM;
			goto mount_fail_check;
		}
		rc = FUNC18(xid, tcon, cifs_sb, full_path);
		if (rc != 0 && rc != -EREMOTE) {
			FUNC19(full_path);
			goto mount_fail_check;
		}
		FUNC19(full_path);
	}

	/* get referral if needed */
	if (rc == -EREMOTE) {
#ifdef CONFIG_CIFS_DFS_UPCALL
		if (referral_walks_count > MAX_NESTED_LINKS) {
			/*
			 * BB: when we implement proper loop detection,
			 *     we will remove this check. But now we need it
			 *     to prevent an indefinite loop if 'DFS tree' is
			 *     misconfigured (i.e. has loops).
			 */
			rc = -ELOOP;
			goto mount_fail_check;
		}
		/* convert forward to back slashes in prepath here if needed */
		if ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_POSIX_PATHS) == 0)
			convert_delimiter(cifs_sb->prepath,
					CIFS_DIR_SEP(cifs_sb));

		rc = expand_dfs_referral(xid, pSesInfo, volume_info, cifs_sb,
					 true);

		if (!rc) {
			referral_walks_count++;
			goto try_mount_again;
		}
		goto mount_fail_check;
#else /* No DFS support, return error on mount */
		rc = -EOPNOTSUPP;
#endif
	}

	if (rc)
		goto mount_fail_check;

	/* now, hang the tcon off of the superblock */
	tlink = FUNC20(sizeof *tlink, GFP_KERNEL);
	if (tlink == NULL) {
		rc = -ENOMEM;
		goto mount_fail_check;
	}

	tlink->tl_uid = pSesInfo->linux_uid;
	tlink->tl_tcon = tcon;
	tlink->tl_time = jiffies;
	FUNC24(TCON_LINK_MASTER, &tlink->tl_flags);
	FUNC24(TCON_LINK_IN_TREE, &tlink->tl_flags);

	cifs_sb->master_tlink = tlink;
	FUNC25(&cifs_sb->tlink_tree_lock);
	FUNC27(&cifs_sb->tlink_tree, tlink);
	FUNC26(&cifs_sb->tlink_tree_lock);

	FUNC22(cifsiod_workqueue, &cifs_sb->prune_tlinks,
				TLINK_IDLE_EXPIRE);

mount_fail_check:
	/* on error free sesinfo and tcon struct if needed */
	if (rc) {
		/* If find_unc succeeded then rc == 0 so we can not end */
		/* up accidently freeing someone elses tcon struct */
		if (tcon)
			FUNC14(tcon);
		else if (pSesInfo)
			FUNC13(pSesInfo);
		else
			FUNC15(srvTcp);
	}

out:
	FUNC3(xid);
	return rc;
}