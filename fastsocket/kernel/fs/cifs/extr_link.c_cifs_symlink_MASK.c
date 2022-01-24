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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/ * d_op; } ;
struct cifs_tcon {scalar_t__ nocase; scalar_t__ unix_ext; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  local_nls; } ;

/* Variables and functions */
 int FUNC0 (int,struct cifs_tcon*,char*,char const*,struct cifs_sb_info*) ; 
 int FUNC1 (int,struct cifs_tcon*,char*,char const*,int /*<<< orphan*/ ) ; 
 int CIFS_MOUNT_MF_SYMLINKS ; 
 struct cifs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (struct tcon_link*) ; 
 int FUNC6 (struct tcon_link*) ; 
 char* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  cifs_ci_dentry_ops ; 
 int /*<<< orphan*/  cifs_dentry_ops ; 
 int FUNC9 (struct inode**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct inode**,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tcon_link*) ; 
 struct tcon_link* FUNC12 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 struct cifs_tcon* FUNC15 (struct tcon_link*) ; 

int
FUNC16(struct inode *inode, struct dentry *direntry, const char *symname)
{
	int rc = -EOPNOTSUPP;
	int xid;
	struct cifs_sb_info *cifs_sb = FUNC2(inode->i_sb);
	struct tcon_link *tlink;
	struct cifs_tcon *pTcon;
	char *full_path = NULL;
	struct inode *newinode = NULL;

	xid = FUNC4();

	tlink = FUNC12(cifs_sb);
	if (FUNC5(tlink)) {
		rc = FUNC6(tlink);
		goto symlink_exit;
	}
	pTcon = FUNC15(tlink);

	full_path = FUNC7(direntry);
	if (full_path == NULL) {
		rc = -ENOMEM;
		goto symlink_exit;
	}

	FUNC8(1, "Full path: %s", full_path);
	FUNC8(1, "symname is %s", symname);

	/* BB what if DFS and this volume is on different share? BB */
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS)
		rc = FUNC0(xid, pTcon, full_path, symname,
					 cifs_sb);
	else if (pTcon->unix_ext)
		rc = FUNC1(xid, pTcon, full_path, symname,
					   cifs_sb->local_nls);
	/* else
	   rc = CIFSCreateReparseSymLink(xid, pTcon, fromName, toName,
					cifs_sb_target->local_nls); */

	if (rc == 0) {
		if (pTcon->unix_ext)
			rc = FUNC10(&newinode, full_path,
						      inode->i_sb, xid);
		else
			rc = FUNC9(&newinode, full_path, NULL,
						 inode->i_sb, xid, NULL);

		if (rc != 0) {
			FUNC8(1, "Create symlink ok, getinodeinfo fail rc = %d",
			      rc);
		} else {
			if (pTcon->nocase)
				direntry->d_op = &cifs_ci_dentry_ops;
			else
				direntry->d_op = &cifs_dentry_ops;
			FUNC13(direntry, newinode);
		}
	}
symlink_exit:
	FUNC14(full_path);
	FUNC11(tlink);
	FUNC3(xid);
	return rc;
}