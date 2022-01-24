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
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  local_nls; } ;
struct cifs_ntsd {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct cifs_tcon*,char const*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,struct cifs_tcon*,int /*<<< orphan*/ ,struct cifs_ntsd*,int /*<<< orphan*/ ,int) ; 
 int CIFS_ACL_GROUP ; 
 int CIFS_ACL_OWNER ; 
 int CIFS_MOUNT_MAP_SPECIAL_CHR ; 
 struct cifs_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int CREATE_OPEN_BACKUP_INTENT ; 
 int /*<<< orphan*/  DBG2 ; 
 int /*<<< orphan*/  FILE_OPEN ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (struct tcon_link*) ; 
 int FUNC7 (struct tcon_link*) ; 
 int WRITE_DAC ; 
 int WRITE_OWNER ; 
 scalar_t__ FUNC8 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tcon_link*) ; 
 struct tcon_link* FUNC12 (struct cifs_sb_info*) ; 
 struct cifs_tcon* FUNC13 (struct tcon_link*) ; 

int FUNC14(struct cifs_ntsd *pnntsd, __u32 acllen,
			struct inode *inode, const char *path, int aclflag)
{
	int oplock = 0;
	int xid, rc, access_flags, create_options = 0;
	__u16 fid;
	struct cifs_tcon *tcon;
	struct cifs_sb_info *cifs_sb = FUNC3(inode->i_sb);
	struct tcon_link *tlink = FUNC12(cifs_sb);

	if (FUNC6(tlink))
		return FUNC7(tlink);

	tcon = FUNC13(tlink);
	xid = FUNC5();

	if (FUNC8(cifs_sb))
		create_options |= CREATE_OPEN_BACKUP_INTENT;

	if (aclflag == CIFS_ACL_OWNER || aclflag == CIFS_ACL_GROUP)
		access_flags = WRITE_OWNER;
	else
		access_flags = WRITE_DAC;

	rc = FUNC1(xid, tcon, path, FILE_OPEN, access_flags,
			create_options, &fid, &oplock, NULL, cifs_sb->local_nls,
			cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MAP_SPECIAL_CHR);
	if (rc) {
		FUNC9(1, "Unable to open file to set ACL");
		goto out;
	}

	rc = FUNC2(xid, tcon, fid, pnntsd, acllen, aclflag);
	FUNC10(DBG2, "SetCIFSACL rc = %d", rc);

	FUNC0(xid, tcon, fid);
out:
	FUNC4(xid);
	FUNC11(tlink);
	return rc;
}