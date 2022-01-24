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
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_lock; } ;
struct dentry {struct inode* d_inode; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  local_nls; } ;
struct cifsInodeInfo {scalar_t__ time; } ;

/* Variables and functions */
 int FUNC0 (int,struct cifs_tcon*,char*,int /*<<< orphan*/ ,int) ; 
 struct cifsInodeInfo* FUNC1 (struct inode*) ; 
 int CIFS_MOUNT_MAP_SPECIAL_CHR ; 
 struct cifs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (struct tcon_link*) ; 
 int FUNC6 (struct tcon_link*) ; 
 char* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcon_link*) ; 
 struct tcon_link* FUNC10 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct cifs_tcon* FUNC18 (struct tcon_link*) ; 

int FUNC19(struct inode *inode, struct dentry *direntry)
{
	int rc = 0;
	int xid;
	struct cifs_sb_info *cifs_sb;
	struct tcon_link *tlink;
	struct cifs_tcon *pTcon;
	char *full_path = NULL;
	struct cifsInodeInfo *cifsInode;

	FUNC8(1, "cifs_rmdir, inode = 0x%p", inode);

	xid = FUNC4();

	full_path = FUNC7(direntry);
	if (full_path == NULL) {
		rc = -ENOMEM;
		goto rmdir_exit;
	}

	cifs_sb = FUNC2(inode->i_sb);
	tlink = FUNC10(cifs_sb);
	if (FUNC5(tlink)) {
		rc = FUNC6(tlink);
		goto rmdir_exit;
	}
	pTcon = FUNC18(tlink);

	rc = FUNC0(xid, pTcon, full_path, cifs_sb->local_nls,
			  cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MAP_SPECIAL_CHR);
	FUNC9(tlink);

	if (!rc) {
		FUNC13(inode);
		FUNC16(&direntry->d_inode->i_lock);
		FUNC14(direntry->d_inode, 0);
		FUNC11(direntry->d_inode);
		FUNC17(&direntry->d_inode->i_lock);
	}

	cifsInode = FUNC1(direntry->d_inode);
	cifsInode->time = 0;	/* force revalidate to go get info when
				   needed */

	cifsInode = FUNC1(inode);
	cifsInode->time = 0;	/* force revalidate to get parent dir info
				   since cached search results now invalid */

	direntry->d_inode->i_ctime = inode->i_ctime = inode->i_mtime =
		FUNC12(inode->i_sb);

rmdir_exit:
	FUNC15(full_path);
	FUNC3(xid);
	return rc;
}