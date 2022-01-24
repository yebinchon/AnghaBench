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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct cifs_tcon {scalar_t__ unix_ext; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  local_nls; } ;
struct cifsInodeInfo {scalar_t__ time; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 int FUNC0 (int,struct cifs_tcon*,char*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,struct cifs_tcon*,char*,char*,int /*<<< orphan*/ ,int) ; 
 struct cifsInodeInfo* FUNC2 (TYPE_1__*) ; 
 int CIFS_MOUNT_MAP_SPECIAL_CHR ; 
 struct cifs_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (struct tcon_link*) ; 
 int FUNC7 (struct tcon_link*) ; 
 char* FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcon_link*) ; 
 struct tcon_link* FUNC10 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 struct cifs_tcon* FUNC13 (struct tcon_link*) ; 

int
FUNC14(struct dentry *old_file, struct inode *inode,
	      struct dentry *direntry)
{
	int rc = -EACCES;
	int xid;
	char *fromName = NULL;
	char *toName = NULL;
	struct cifs_sb_info *cifs_sb = FUNC3(inode->i_sb);
	struct tcon_link *tlink;
	struct cifs_tcon *pTcon;
	struct cifsInodeInfo *cifsInode;

	tlink = FUNC10(cifs_sb);
	if (FUNC6(tlink))
		return FUNC7(tlink);
	pTcon = FUNC13(tlink);

	xid = FUNC5();

	fromName = FUNC8(old_file);
	toName = FUNC8(direntry);
	if ((fromName == NULL) || (toName == NULL)) {
		rc = -ENOMEM;
		goto cifs_hl_exit;
	}

	if (pTcon->unix_ext)
		rc = FUNC1(xid, pTcon, fromName, toName,
					    cifs_sb->local_nls,
					    cifs_sb->mnt_cifs_flags &
						CIFS_MOUNT_MAP_SPECIAL_CHR);
	else {
		rc = FUNC0(xid, pTcon, fromName, toName,
					cifs_sb->local_nls,
					cifs_sb->mnt_cifs_flags &
						CIFS_MOUNT_MAP_SPECIAL_CHR);
		if ((rc == -EIO) || (rc == -EINVAL))
			rc = -EOPNOTSUPP;
	}

	FUNC11(direntry);	/* force new lookup from server of target */

	/* if source file is cached (oplocked) revalidate will not go to server
	   until the file is closed or oplock broken so update nlinks locally */
	if (old_file->d_inode) {
		cifsInode = FUNC2(old_file->d_inode);
		if (rc == 0) {
			old_file->d_inode->i_nlink++;
/* BB should we make this contingent on superblock flag NOATIME? */
/*			old_file->d_inode->i_ctime = CURRENT_TIME;*/
			/* parent dir timestamps will update from srv
			within a second, would it really be worth it
			to set the parent dir cifs inode time to zero
			to force revalidate (faster) for it too? */
		}
		/* if not oplocked will force revalidate to get info
		   on source file from srv */
		cifsInode->time = 0;

		/* Will update parent dir timestamps from srv within a second.
		   Would it really be worth it to set the parent dir (cifs
		   inode) time field to zero to force revalidate on parent
		   directory faster ie
			CIFS_I(inode)->time = 0;  */
	}

cifs_hl_exit:
	FUNC12(fromName);
	FUNC12(toName);
	FUNC4(xid);
	FUNC9(tlink);
	return rc;
}