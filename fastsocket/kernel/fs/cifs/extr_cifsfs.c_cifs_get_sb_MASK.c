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
struct vfsmount {int dummy; } ;
struct super_block {int s_flags; int /*<<< orphan*/  local_nls; } ;
struct smb_vol {int s_flags; int /*<<< orphan*/  local_nls; } ;
struct file_system_type {int dummy; } ;
struct cifs_sb_info {struct cifs_sb_info* mountdata; } ;
struct cifs_mnt_data {int flags; struct cifs_sb_info* cifs_sb; struct super_block* vol; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct super_block*) ; 
 int MS_ACTIVE ; 
 int MS_NOATIME ; 
 int MS_NODIRATIME ; 
 int MS_SILENT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 struct super_block* FUNC5 (char*,char const*) ; 
 int FUNC6 (struct cifs_sb_info*,struct super_block*) ; 
 int FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  cifs_set_super ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC11 (struct cifs_sb_info*) ; 
 struct cifs_sb_info* FUNC12 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cifs_sb_info* FUNC13 (int,int /*<<< orphan*/ ) ; 
 struct super_block* FUNC14 (struct file_system_type*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cifs_mnt_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct vfsmount*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct file_system_type *fs_type,
	    int flags, const char *dev_name, void *data, struct vfsmount *mnt)
{
	int rc = 0;
	struct super_block *sb;
	struct cifs_sb_info *cifs_sb;
	struct smb_vol *volume_info;
	struct cifs_mnt_data mnt_data;

	FUNC3(1, "Devname: %s flags: %d ", dev_name, flags);

	volume_info = FUNC5((char *)data, dev_name);
	if (FUNC0(volume_info))
		return FUNC1(volume_info);

	cifs_sb = FUNC13(sizeof(struct cifs_sb_info), GFP_KERNEL);
	if (cifs_sb == NULL) {
		rc = -ENOMEM;
		goto out_nls;
	}

	/*
	 * Copy mount params for use in submounts. Better to do
	 * the copy here and deal with the error before cleanup gets
	 * complicated post-mount.
	 */
	cifs_sb->mountdata = FUNC12(data, PAGE_SIZE, GFP_KERNEL);
	if (cifs_sb->mountdata == NULL) {
		rc = -ENOMEM;
		goto out_cifs_sb;
	}

	FUNC8(volume_info, cifs_sb);

	rc = FUNC6(cifs_sb, volume_info);
	if (rc) {
		if (!(flags & MS_SILENT))
			FUNC2(1, "cifs_mount failed w/return code = %d", rc);
		goto out_mountdata;
	}

	mnt_data.vol = volume_info;
	mnt_data.cifs_sb = cifs_sb;
	mnt_data.flags = flags;

	sb = FUNC14(fs_type, NULL, cifs_set_super, &mnt_data);
	if (FUNC0(sb)) {
		rc = FUNC1(sb);
		FUNC9(cifs_sb);
		goto out;
	}

	sb->s_flags = flags;
	/* BB should we make this contingent on mount parm? */
	sb->s_flags |= MS_NODIRATIME | MS_NOATIME;

	rc = FUNC7(sb);
	if (rc)
		goto out_super;

	sb->s_flags |= MS_ACTIVE;

	FUNC15(mnt, sb);
	goto out;

out_super:
	FUNC10(sb);
out:
	FUNC4(volume_info);
	return rc;
out_mountdata:
	FUNC11(cifs_sb->mountdata);
out_cifs_sb:
	FUNC11(cifs_sb);
out_nls:
	FUNC16(volume_info->local_nls);
	goto out;
}