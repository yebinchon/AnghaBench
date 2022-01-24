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
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  local_nls; } ;
struct TYPE_2__ {int capabilities; } ;

/* Variables and functions */
 int CAP_UNIX ; 
 int FUNC0 (int,struct cifs_tcon*,char*,char**,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,struct cifs_tcon*,char*,char**,int /*<<< orphan*/ ) ; 
 int CIFS_MOUNT_MAP_SPECIAL_CHR ; 
 int CIFS_MOUNT_MF_SYMLINKS ; 
 struct cifs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int ENOMEM ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (struct tcon_link*) ; 
 int FUNC7 (struct tcon_link*) ; 
 char* FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,char*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct tcon_link*) ; 
 struct tcon_link* FUNC11 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct nameidata*,char*) ; 
 struct cifs_tcon* FUNC14 (struct tcon_link*) ; 

void *
FUNC15(struct dentry *direntry, struct nameidata *nd)
{
	struct inode *inode = direntry->d_inode;
	int rc = -ENOMEM;
	int xid;
	char *full_path = NULL;
	char *target_path = NULL;
	struct cifs_sb_info *cifs_sb = FUNC2(inode->i_sb);
	struct tcon_link *tlink = NULL;
	struct cifs_tcon *tcon;

	xid = FUNC5();

	tlink = FUNC11(cifs_sb);
	if (FUNC6(tlink)) {
		rc = FUNC7(tlink);
		tlink = NULL;
		goto out;
	}
	tcon = FUNC14(tlink);

	/*
	 * For now, we just handle symlinks with unix extensions enabled.
	 * Eventually we should handle NTFS reparse points, and MacOS
	 * symlink support. For instance...
	 *
	 * rc = CIFSSMBQueryReparseLinkInfo(...)
	 *
	 * For now, just return -EACCES when the server doesn't support posix
	 * extensions. Note that we still allow querying symlinks when posix
	 * extensions are manually disabled. We could disable these as well
	 * but there doesn't seem to be any harm in allowing the client to
	 * read them.
	 */
	if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS)
	    && !(tcon->ses->capabilities & CAP_UNIX)) {
		rc = -EACCES;
		goto out;
	}

	full_path = FUNC8(direntry);
	if (!full_path)
		goto out;

	FUNC9(1, "Full path: %s inode = 0x%p", full_path, inode);

	rc = -EACCES;
	/*
	 * First try Minshall+French Symlinks, if configured
	 * and fallback to UNIX Extensions Symlinks.
	 */
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS)
		rc = FUNC0(xid, tcon, full_path, &target_path,
					cifs_sb->local_nls,
					cifs_sb->mnt_cifs_flags &
						CIFS_MOUNT_MAP_SPECIAL_CHR);

	if ((rc != 0) && (tcon->ses->capabilities & CAP_UNIX))
		rc = FUNC1(xid, tcon, full_path, &target_path,
					     cifs_sb->local_nls);

	FUNC12(full_path);
out:
	if (rc != 0) {
		FUNC12(target_path);
		target_path = FUNC3(rc);
	}

	FUNC4(xid);
	if (tlink)
		FUNC10(tlink);
	FUNC13(nd, target_path);
	return NULL;
}