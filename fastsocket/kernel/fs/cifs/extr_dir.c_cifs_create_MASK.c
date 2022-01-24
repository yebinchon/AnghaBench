#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tcon_link {int dummy; } ;
struct TYPE_10__ {TYPE_2__* file; } ;
struct TYPE_11__ {TYPE_3__ open; } ;
struct nameidata {int flags; TYPE_4__ intent; } ;
struct inode {int i_mode; scalar_t__ i_gid; scalar_t__ i_uid; int /*<<< orphan*/  i_sb; } ;
typedef  struct tcon_link file ;
struct dentry {int dummy; } ;
struct cifs_unix_set_info_args {int mode; void* ctime; void* atime; void* mtime; void* gid; void* uid; int /*<<< orphan*/  device; } ;
struct TYPE_12__ {int /*<<< orphan*/  Capability; } ;
struct cifs_tcon {scalar_t__ unix_ext; TYPE_6__* ses; TYPE_5__ fsUnixInfo; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  local_nls; } ;
struct cifsFileInfo {int dummy; } ;
typedef  void* __u64 ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_14__ {int /*<<< orphan*/  tgid; } ;
struct TYPE_13__ {int capabilities; TYPE_1__* server; } ;
struct TYPE_9__ {int f_flags; } ;
struct TYPE_8__ {scalar_t__ oplocks; } ;
typedef  char FILE_ALL_INFO ;

/* Variables and functions */
 int CAP_NT_SMBS ; 
 int CAP_UNIX ; 
 int /*<<< orphan*/  FUNC0 (int,struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct cifs_tcon*,char*,int,int,int,int /*<<< orphan*/ *,int*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct cifs_tcon*,struct cifs_unix_set_info_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CIFS_CREATE_ACTION ; 
 int CIFS_MOUNT_DYNPERM ; 
 int CIFS_MOUNT_MAP_SPECIAL_CHR ; 
 int CIFS_MOUNT_SET_UID ; 
 struct cifs_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int CIFS_UNIX_POSIX_PATH_OPS_CAP ; 
 int CREATE_NOT_DIR ; 
 int CREATE_OPEN_BACKUP_INTENT ; 
 int CREATE_OPTION_READONLY ; 
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int EREMOTE ; 
 int FILE_CREATE ; 
 int FILE_OPEN_IF ; 
 int FILE_OVERWRITE_IF ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (struct tcon_link*) ; 
 int LOOKUP_OPEN ; 
 void* NO_CHANGE_64 ; 
 int FUNC7 (int) ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDONLY ; 
 int O_TRUNC ; 
 int FUNC8 (struct tcon_link*) ; 
 int REQ_OPLOCK ; 
 int FUNC9 (int,struct cifs_tcon*,char*,int,int,int,int /*<<< orphan*/ *,int*,char*,int /*<<< orphan*/ ,int) ; 
 int S_ISGID ; 
 int S_IWUGO ; 
 scalar_t__ FUNC10 (struct cifs_sb_info*) ; 
 char* FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int FUNC13 (struct inode**,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct inode**,char*,int /*<<< orphan*/ ,int) ; 
 struct cifsFileInfo* FUNC15 (int /*<<< orphan*/ ,struct tcon_link*,struct tcon_link*,int) ; 
 int FUNC16 (char*,struct inode**,int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (struct tcon_link*) ; 
 struct tcon_link* FUNC18 (struct cifs_sb_info*) ; 
 TYPE_7__* current ; 
 scalar_t__ FUNC19 () ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct tcon_link*) ; 
 int /*<<< orphan*/  generic_file_open ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 char* FUNC23 (int,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 struct tcon_link* FUNC25 (struct nameidata*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct cifs_tcon*,struct dentry*,struct inode*) ; 
 struct cifs_tcon* FUNC27 (struct tcon_link*) ; 

int
FUNC28(struct inode *inode, struct dentry *direntry, int mode,
		struct nameidata *nd)
{
	int rc = -ENOENT;
	int xid;
	int create_options = CREATE_NOT_DIR;
	__u32 oplock = 0;
	int oflags;
	/*
	 * BB below access is probably too much for mknod to request
	 *    but we have to do query and setpathinfo so requesting
	 *    less could fail (unless we want to request getatr and setatr
	 *    permissions (only).  At least for POSIX we do not have to
	 *    request so much.
	 */
	int desiredAccess = GENERIC_READ | GENERIC_WRITE;
	__u16 fileHandle;
	struct cifs_sb_info *cifs_sb;
	struct tcon_link *tlink;
	struct cifs_tcon *tcon;
	char *full_path = NULL;
	FILE_ALL_INFO *buf = NULL;
	struct inode *newinode = NULL;
	int disposition = FILE_OVERWRITE_IF;

	xid = FUNC5();

	cifs_sb = FUNC3(inode->i_sb);
	tlink = FUNC18(cifs_sb);
	if (FUNC6(tlink)) {
		FUNC4(xid);
		return FUNC8(tlink);
	}
	tcon = FUNC27(tlink);

	if (tcon->ses->server->oplocks)
		oplock = REQ_OPLOCK;

	if (nd && (nd->flags & LOOKUP_OPEN))
		oflags = nd->intent.open.file->f_flags;
	else
		oflags = O_RDONLY | O_CREAT;

	full_path = FUNC11(direntry);
	if (full_path == NULL) {
		rc = -ENOMEM;
		goto cifs_create_out;
	}

	if (tcon->unix_ext && (tcon->ses->capabilities & CAP_UNIX) &&
	    (CIFS_UNIX_POSIX_PATH_OPS_CAP &
			FUNC24(tcon->fsUnixInfo.Capability))) {
		rc = FUNC16(full_path, &newinode,
			inode->i_sb, mode, oflags, &oplock, &fileHandle, xid);
		/* EIO could indicate that (posix open) operation is not
		   supported, despite what server claimed in capability
		   negotation.  EREMOTE indicates DFS junction, which is not
		   handled in posix open */

		if (rc == 0) {
			if (newinode == NULL) /* query inode info */
				goto cifs_create_get_file_info;
			else /* success, no need to query */
				goto cifs_create_set_dentry;
		} else if ((rc != -EIO) && (rc != -EREMOTE) &&
			 (rc != -EOPNOTSUPP) && (rc != -EINVAL))
			goto cifs_create_out;
		/* else fallthrough to retry, using older open call, this is
		   case where server does not support this SMB level, and
		   falsely claims capability (also get here for DFS case
		   which should be rare for path not covered on files) */
	}

	if (nd && (nd->flags & LOOKUP_OPEN)) {
		/* if the file is going to stay open, then we
		   need to set the desired access properly */
		desiredAccess = 0;
		if (FUNC7(oflags) & FMODE_READ)
			desiredAccess |= GENERIC_READ; /* is this too little? */
		if (FUNC7(oflags) & FMODE_WRITE)
			desiredAccess |= GENERIC_WRITE;

		if ((oflags & (O_CREAT | O_EXCL)) == (O_CREAT | O_EXCL))
			disposition = FILE_CREATE;
		else if ((oflags & (O_CREAT | O_TRUNC)) == (O_CREAT | O_TRUNC))
			disposition = FILE_OVERWRITE_IF;
		else if ((oflags & O_CREAT) == O_CREAT)
			disposition = FILE_OPEN_IF;
		else
			FUNC12(1, "Create flag not set in create function");
	}

	/* BB add processing to set equivalent of mode - e.g. via CreateX with
	   ACLs */

	buf = FUNC23(sizeof(FILE_ALL_INFO), GFP_KERNEL);
	if (buf == NULL) {
		rc = -ENOMEM;
		goto cifs_create_out;
	}

	/*
	 * if we're not using unix extensions, see if we need to set
	 * ATTR_READONLY on the create call
	 */
	if (!tcon->unix_ext && (mode & S_IWUGO) == 0)
		create_options |= CREATE_OPTION_READONLY;

	if (FUNC10(cifs_sb))
		create_options |= CREATE_OPEN_BACKUP_INTENT;

	if (tcon->ses->capabilities & CAP_NT_SMBS)
		rc = FUNC1(xid, tcon, full_path, disposition,
			 desiredAccess, create_options,
			 &fileHandle, &oplock, buf, cifs_sb->local_nls,
			 cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MAP_SPECIAL_CHR);
	else
		rc = -EIO; /* no NT SMB support fall into legacy open below */

	if (rc == -EIO) {
		/* old server, retry the open legacy style */
		rc = FUNC9(xid, tcon, full_path, disposition,
			desiredAccess, create_options,
			&fileHandle, &oplock, buf, cifs_sb->local_nls,
			cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MAP_SPECIAL_CHR);
	}
	if (rc) {
		FUNC12(1, "cifs_create returned 0x%x", rc);
		goto cifs_create_out;
	}

	/* If Open reported that we actually created a file
	   then we now have to set the mode if possible */
	if ((tcon->unix_ext) && (oplock & CIFS_CREATE_ACTION)) {
		struct cifs_unix_set_info_args args = {
				.mode	= mode,
				.ctime	= NO_CHANGE_64,
				.atime	= NO_CHANGE_64,
				.mtime	= NO_CHANGE_64,
				.device	= 0,
		};

		if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SET_UID) {
			args.uid = (__u64) FUNC20();
			if (inode->i_mode & S_ISGID)
				args.gid = (__u64) inode->i_gid;
			else
				args.gid = (__u64) FUNC19();
		} else {
			args.uid = NO_CHANGE_64;
			args.gid = NO_CHANGE_64;
		}
		FUNC2(xid, tcon, &args, fileHandle,
					current->tgid);
	} else {
		/* BB implement mode setting via Windows security
		   descriptors e.g. */
		/* CIFSSMBWinSetPerms(xid,tcon,path,mode,-1,-1,nls);*/

		/* Could set r/o dos attribute if mode & 0222 == 0 */
	}

cifs_create_get_file_info:
	/* server might mask mode so we have to query for it */
	if (tcon->unix_ext)
		rc = FUNC14(&newinode, full_path,
					      inode->i_sb, xid);
	else {
		rc = FUNC13(&newinode, full_path, buf,
					 inode->i_sb, xid, &fileHandle);
		if (newinode) {
			if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_DYNPERM)
				newinode->i_mode = mode;
			if ((oplock & CIFS_CREATE_ACTION) &&
			    (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SET_UID)) {
				newinode->i_uid = FUNC20();
				if (inode->i_mode & S_ISGID)
					newinode->i_gid = inode->i_gid;
				else
					newinode->i_gid = FUNC19();
			}
		}
	}

cifs_create_set_dentry:
	if (rc == 0)
		FUNC26(tcon, direntry, newinode);
	else
		FUNC12(1, "Create worked, get_inode_info failed rc = %d", rc);

	if (newinode && nd && (nd->flags & LOOKUP_OPEN)) {
		struct cifsFileInfo *pfile_info;
		struct file *filp;

		filp = FUNC25(nd, direntry, generic_file_open);
		if (FUNC6(filp)) {
			rc = FUNC8(filp);
			FUNC0(xid, tcon, fileHandle);
			goto cifs_create_out;
		}

		pfile_info = FUNC15(fileHandle, filp, tlink, oplock);
		if (pfile_info == NULL) {
			FUNC21(filp);
			FUNC0(xid, tcon, fileHandle);
			rc = -ENOMEM;
		}
	} else {
		FUNC0(xid, tcon, fileHandle);
	}

cifs_create_out:
	FUNC22(buf);
	FUNC22(full_path);
	FUNC17(tlink);
	FUNC4(xid);
	return rc;
}