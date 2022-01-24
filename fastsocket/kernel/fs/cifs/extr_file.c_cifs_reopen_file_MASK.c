#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mapping; } ;
struct TYPE_7__ {int /*<<< orphan*/  Capability; } ;
struct cifs_tcon {scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_2__* ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  local_nls; int /*<<< orphan*/  mnt_file_mode; } ;
struct cifsInodeInfo {int dummy; } ;
struct cifsFileInfo {int invalidHandle; unsigned int f_flags; int /*<<< orphan*/  fh_mutex; int /*<<< orphan*/  netfid; TYPE_4__* dentry; int /*<<< orphan*/  tlink; } ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_8__ {struct inode* d_inode; } ;
struct TYPE_6__ {int capabilities; TYPE_1__* server; } ;
struct TYPE_5__ {scalar_t__ oplocks; } ;

/* Variables and functions */
 int CAP_UNIX ; 
 int FUNC0 (int,struct cifs_tcon*,char*,int,int,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct cifsInodeInfo* FUNC1 (struct inode*) ; 
 int CIFS_MOUNT_MAP_SPECIAL_CHR ; 
 struct cifs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int CIFS_UNIX_POSIX_PATH_OPS_CAP ; 
 int CREATE_NOT_DIR ; 
 int CREATE_OPEN_BACKUP_INTENT ; 
 int EACCES ; 
 int ENOMEM ; 
 int FILE_OPEN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 unsigned int O_CREAT ; 
 unsigned int O_EXCL ; 
 unsigned int O_TRUNC ; 
 int REQ_OPLOCK ; 
 scalar_t__ FUNC5 (struct cifs_sb_info*) ; 
 char* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int FUNC8 (unsigned int) ; 
 int FUNC9 (struct inode**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct inode**,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct cifsFileInfo*) ; 
 int /*<<< orphan*/  FUNC13 (struct cifsInodeInfo*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 struct cifs_tcon* FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct cifsFileInfo *pCifsFile, bool can_flush)
{
	int rc = -EACCES;
	int xid;
	__u32 oplock;
	struct cifs_sb_info *cifs_sb;
	struct cifs_tcon *tcon;
	struct cifsInodeInfo *pCifsInode;
	struct inode *inode;
	char *full_path = NULL;
	int desiredAccess;
	int disposition = FILE_OPEN;
	int create_options = CREATE_NOT_DIR;
	__u16 netfid;

	xid = FUNC4();
	FUNC18(&pCifsFile->fh_mutex);
	if (!pCifsFile->invalidHandle) {
		FUNC19(&pCifsFile->fh_mutex);
		rc = 0;
		FUNC3(xid);
		return rc;
	}

	inode = pCifsFile->dentry->d_inode;
	cifs_sb = FUNC2(inode->i_sb);
	tcon = FUNC20(pCifsFile->tlink);

/* can not grab rename sem here because various ops, including
   those that already have the rename sem can end up causing writepage
   to get called and if the server was down that means we end up here,
   and we can never tell if the caller already has the rename_sem */
	full_path = FUNC6(pCifsFile->dentry);
	if (full_path == NULL) {
		rc = -ENOMEM;
		FUNC19(&pCifsFile->fh_mutex);
		FUNC3(xid);
		return rc;
	}

	FUNC7(1, "inode = 0x%p file flags 0x%x for %s",
		 inode, pCifsFile->f_flags, full_path);

	if (tcon->ses->server->oplocks)
		oplock = REQ_OPLOCK;
	else
		oplock = 0;

	if (tcon->unix_ext && (tcon->ses->capabilities & CAP_UNIX) &&
	    (CIFS_UNIX_POSIX_PATH_OPS_CAP &
			FUNC16(tcon->fsUnixInfo.Capability))) {

		/*
		 * O_CREAT, O_EXCL and O_TRUNC already had their effect on the
		 * original open. Must mask them off for a reopen.
		 */
		unsigned int oflags = pCifsFile->f_flags &
						~(O_CREAT | O_EXCL | O_TRUNC);

		rc = FUNC11(full_path, NULL, inode->i_sb,
				cifs_sb->mnt_file_mode /* ignored */,
				oflags, &oplock, &netfid, xid);
		if (rc == 0) {
			FUNC7(1, "posix reopen succeeded");
			goto reopen_success;
		}
		/* fallthrough to retry open the old way on errors, especially
		   in the reconnect path it is important to retry hard */
	}

	desiredAccess = FUNC8(pCifsFile->f_flags);

	if (FUNC5(cifs_sb))
		create_options |= CREATE_OPEN_BACKUP_INTENT;

	/* Can not refresh inode by passing in file_info buf to be returned
	   by SMBOpen and then calling get_inode_info with returned buf
	   since file might have write behind data that needs to be flushed
	   and server version of file size can be stale. If we knew for sure
	   that inode was not dirty locally we could do this */

	rc = FUNC0(xid, tcon, full_path, disposition, desiredAccess,
			 create_options, &netfid, &oplock, NULL,
			 cifs_sb->local_nls, cifs_sb->mnt_cifs_flags &
				CIFS_MOUNT_MAP_SPECIAL_CHR);
	if (rc) {
		FUNC19(&pCifsFile->fh_mutex);
		FUNC7(1, "cifs_open returned 0x%x", rc);
		FUNC7(1, "oplock: %d", oplock);
		goto reopen_error_exit;
	}

reopen_success:
	pCifsFile->netfid = netfid;
	pCifsFile->invalidHandle = false;
	FUNC19(&pCifsFile->fh_mutex);
	pCifsInode = FUNC1(inode);

	if (can_flush) {
		rc = FUNC14(inode->i_mapping);
		FUNC17(inode->i_mapping, rc);

		if (tcon->unix_ext)
			rc = FUNC10(&inode,
				full_path, inode->i_sb, xid);
		else
			rc = FUNC9(&inode,
				full_path, NULL, inode->i_sb,
				xid, NULL);
	} /* else we are writing out data to server already
	     and could deadlock if we tried to flush data, and
	     since we do not know if we have data that would
	     invalidate the current end of file on the server
	     we can not go to the server to get the new inod
	     info */

	FUNC13(pCifsInode, oplock);

	FUNC12(pCifsFile);

reopen_error_exit:
	FUNC15(full_path);
	FUNC3(xid);
	return rc;
}