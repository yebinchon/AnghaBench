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
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_sb; } ;
struct iattr {int /*<<< orphan*/  ia_size; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  local_nls; } ;
struct cifs_io_parms {int /*<<< orphan*/  length; scalar_t__ offset; struct cifs_tcon* tcon; int /*<<< orphan*/  pid; void* netfid; } ;
struct cifsInodeInfo {int /*<<< orphan*/  server_eof; } ;
struct cifsFileInfo {struct tcon_link* tlink; int /*<<< orphan*/  pid; void* netfid; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  void* __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  tgid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct cifs_tcon*,void*) ; 
 int FUNC1 (int,struct cifs_tcon*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,struct cifs_tcon*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,struct cifs_io_parms*,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct cifsInodeInfo* FUNC4 (struct inode*) ; 
 int CIFS_MOUNT_MAP_SPECIAL_CHR ; 
 struct cifs_sb_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CREATE_NOT_DIR ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FILE_OPEN ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ FUNC6 (struct tcon_link*) ; 
 int FUNC7 (struct tcon_link*) ; 
 int FUNC8 (int,struct cifs_tcon*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cifsFileInfo*) ; 
 int /*<<< orphan*/  FUNC11 (struct tcon_link*) ; 
 struct tcon_link* FUNC12 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct inode*,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct cifsFileInfo* FUNC15 (struct cifsInodeInfo*,int) ; 
 struct cifs_tcon* FUNC16 (struct tcon_link*) ; 

__attribute__((used)) static int
FUNC17(struct inode *inode, struct iattr *attrs,
		   int xid, char *full_path)
{
	int rc;
	struct cifsFileInfo *open_file;
	struct cifsInodeInfo *cifsInode = FUNC4(inode);
	struct cifs_sb_info *cifs_sb = FUNC5(inode->i_sb);
	struct tcon_link *tlink = NULL;
	struct cifs_tcon *pTcon = NULL;
	struct cifs_io_parms io_parms;

	/*
	 * To avoid spurious oplock breaks from server, in the case of
	 * inodes that we already have open, avoid doing path based
	 * setting of file size if we can do it by handle.
	 * This keeps our caching token (oplock) and avoids timeouts
	 * when the local oplock break takes longer to flush
	 * writebehind data than the SMB timeout for the SetPathInfo
	 * request would allow
	 */
	open_file = FUNC15(cifsInode, true);
	if (open_file) {
		__u16 nfid = open_file->netfid;
		__u32 npid = open_file->pid;
		pTcon = FUNC16(open_file->tlink);
		rc = FUNC2(xid, pTcon, attrs->ia_size, nfid,
					npid, false);
		FUNC10(open_file);
		FUNC9(1, "SetFSize for attrs rc = %d", rc);
		if ((rc == -EINVAL) || (rc == -EOPNOTSUPP)) {
			unsigned int bytes_written;

			io_parms.netfid = nfid;
			io_parms.pid = npid;
			io_parms.tcon = pTcon;
			io_parms.offset = 0;
			io_parms.length = attrs->ia_size;
			rc = FUNC3(xid, &io_parms, &bytes_written,
					  NULL, NULL, 1);
			FUNC9(1, "Wrt seteof rc %d", rc);
		}
	} else
		rc = -EINVAL;

	if (rc != 0) {
		if (pTcon == NULL) {
			tlink = FUNC12(cifs_sb);
			if (FUNC6(tlink))
				return FUNC7(tlink);
			pTcon = FUNC16(tlink);
		}

		/* Set file size by pathname rather than by handle
		   either because no valid, writeable file handle for
		   it was found or because there was an error setting
		   it by handle */
		rc = FUNC1(xid, pTcon, full_path, attrs->ia_size,
				   false, cifs_sb->local_nls,
				   cifs_sb->mnt_cifs_flags &
					CIFS_MOUNT_MAP_SPECIAL_CHR);
		FUNC9(1, "SetEOF by path (setattrs) rc = %d", rc);
		if ((rc == -EINVAL) || (rc == -EOPNOTSUPP)) {
			__u16 netfid;
			int oplock = 0;

			rc = FUNC8(xid, pTcon, full_path,
				FILE_OPEN, GENERIC_WRITE,
				CREATE_NOT_DIR, &netfid, &oplock, NULL,
				cifs_sb->local_nls,
				cifs_sb->mnt_cifs_flags &
					CIFS_MOUNT_MAP_SPECIAL_CHR);
			if (rc == 0) {
				unsigned int bytes_written;

				io_parms.netfid = netfid;
				io_parms.pid = current->tgid;
				io_parms.tcon = pTcon;
				io_parms.offset = 0;
				io_parms.length = attrs->ia_size;
				rc = FUNC3(xid, &io_parms,
						  &bytes_written,
						  NULL, NULL,  1);
				FUNC9(1, "wrt seteof rc %d", rc);
				FUNC0(xid, pTcon, netfid);
			}
		}
		if (tlink)
			FUNC11(tlink);
	}

	if (rc == 0) {
		cifsInode->server_eof = attrs->ia_size;
		rc = FUNC14(inode, attrs->ia_size);
		FUNC13(inode->i_mapping, inode->i_size);
	}

	return rc;
}