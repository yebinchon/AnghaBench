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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  local_nls; } ;
struct cifs_fattr {int dummy; } ;
typedef  int /*<<< orphan*/  FILE_UNIX_BASIC_INFO ;

/* Variables and functions */
 int FUNC0 (struct cifs_fattr*,unsigned char const*,struct cifs_sb_info*,int) ; 
 int FUNC1 (int,struct cifs_tcon*,unsigned char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int CIFS_MOUNT_MAP_SPECIAL_CHR ; 
 int CIFS_MOUNT_MF_SYMLINKS ; 
 struct cifs_sb_info* FUNC2 (struct super_block*) ; 
 int ENOMEM ; 
 int EREMOTE ; 
 scalar_t__ FUNC3 (struct tcon_link*) ; 
 int FUNC4 (struct tcon_link*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct cifs_fattr*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct cifs_fattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,struct cifs_fattr*) ; 
 struct inode* FUNC9 (struct super_block*,struct cifs_fattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct tcon_link*) ; 
 struct tcon_link* FUNC11 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct cifs_fattr*,int /*<<< orphan*/ *,struct cifs_sb_info*) ; 
 struct cifs_tcon* FUNC13 (struct tcon_link*) ; 

int FUNC14(struct inode **pinode,
			     const unsigned char *full_path,
			     struct super_block *sb, int xid)
{
	int rc;
	FILE_UNIX_BASIC_INFO find_data;
	struct cifs_fattr fattr;
	struct cifs_tcon *tcon;
	struct tcon_link *tlink;
	struct cifs_sb_info *cifs_sb = FUNC2(sb);

	FUNC5(1, "Getting info on %s", full_path);

	tlink = FUNC11(cifs_sb);
	if (FUNC3(tlink))
		return FUNC4(tlink);
	tcon = FUNC13(tlink);

	/* could have done a find first instead but this returns more info */
	rc = FUNC1(xid, tcon, full_path, &find_data,
				  cifs_sb->local_nls, cifs_sb->mnt_cifs_flags &
					CIFS_MOUNT_MAP_SPECIAL_CHR);
	FUNC10(tlink);

	if (!rc) {
		FUNC12(&fattr, &find_data, cifs_sb);
	} else if (rc == -EREMOTE) {
		FUNC6(&fattr, sb);
		rc = 0;
	} else {
		return rc;
	}

	/* check for Minshall+French symlinks */
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS) {
		int tmprc = FUNC0(&fattr, full_path, cifs_sb, xid);
		if (tmprc)
			FUNC5(1, "CIFSCheckMFSymlink: %d", tmprc);
	}

	if (*pinode == NULL) {
		/* get new inode */
		FUNC8(sb, &fattr);
		*pinode = FUNC9(sb, &fattr);
		if (!*pinode)
			rc = -ENOMEM;
	} else {
		/* we already have inode, update it */
		FUNC7(*pinode, &fattr);
	}

	return rc;
}