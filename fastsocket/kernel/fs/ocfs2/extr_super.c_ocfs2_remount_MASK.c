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
struct super_block {int s_flags; } ;
struct ocfs2_super {int s_mount_opt; int osb_flags; int s_feature_incompat; scalar_t__ osb_commit_interval; int /*<<< orphan*/  preferred_slot; int /*<<< orphan*/  s_atime_quantum; int /*<<< orphan*/  osb_lock; } ;
struct mount_options {int mount_opt; scalar_t__ commit_interval; int /*<<< orphan*/  slot; int /*<<< orphan*/  atime_quantum; } ;

/* Variables and functions */
 int EINVAL ; 
 int EROFS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int MS_RDONLY ; 
 int OCFS2_FEATURE_INCOMPAT_XATTR ; 
 int /*<<< orphan*/  OCFS2_FEATURE_RO_COMPAT_SUPP ; 
 int FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int OCFS2_MOUNT_DATA_WRITEBACK ; 
 int OCFS2_MOUNT_HB_LOCAL ; 
 int OCFS2_MOUNT_INODE64 ; 
 int OCFS2_MOUNT_POSIX_ACL ; 
 int OCFS2_OSB_ERROR_FS ; 
 int OCFS2_OSB_HARD_RO ; 
 int OCFS2_OSB_SOFT_RO ; 
 struct ocfs2_super* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*,struct mount_options*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*) ; 
 int FUNC8 (struct ocfs2_super*,int) ; 
 scalar_t__ FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct super_block *sb, int *flags, char *data)
{
	int incompat_features;
	int ret = 0;
	struct mount_options parsed_options;
	struct ocfs2_super *osb = FUNC1(sb);

	FUNC2();

	if (!FUNC6(sb, data, &parsed_options, 1)) {
		ret = -EINVAL;
		goto out;
	}

	if ((osb->s_mount_opt & OCFS2_MOUNT_HB_LOCAL) !=
	    (parsed_options.mount_opt & OCFS2_MOUNT_HB_LOCAL)) {
		ret = -EINVAL;
		FUNC3(ML_ERROR, "Cannot change heartbeat mode on remount\n");
		goto out;
	}

	if ((osb->s_mount_opt & OCFS2_MOUNT_DATA_WRITEBACK) !=
	    (parsed_options.mount_opt & OCFS2_MOUNT_DATA_WRITEBACK)) {
		ret = -EINVAL;
		FUNC3(ML_ERROR, "Cannot change data mode on remount\n");
		goto out;
	}

	/* Probably don't want this on remount; it might
	 * mess with other nodes */
	if (!(osb->s_mount_opt & OCFS2_MOUNT_INODE64) &&
	    (parsed_options.mount_opt & OCFS2_MOUNT_INODE64)) {
		ret = -EINVAL;
		FUNC3(ML_ERROR, "Cannot enable inode64 on remount\n");
		goto out;
	}

	/* We're going to/from readonly mode. */
	if ((*flags & MS_RDONLY) != (sb->s_flags & MS_RDONLY)) {
		/* Disable quota accounting before remounting RO */
		if (*flags & MS_RDONLY) {
			ret = FUNC8(osb, 0);
			if (ret < 0)
				goto out;
		}
		/* Lock here so the check of HARD_RO and the potential
		 * setting of SOFT_RO is atomic. */
		FUNC10(&osb->osb_lock);
		if (osb->osb_flags & OCFS2_OSB_HARD_RO) {
			FUNC3(ML_ERROR, "Remount on readonly device is forbidden.\n");
			ret = -EROFS;
			goto unlock_osb;
		}

		if (*flags & MS_RDONLY) {
			FUNC3(0, "Going to ro mode.\n");
			sb->s_flags |= MS_RDONLY;
			osb->osb_flags |= OCFS2_OSB_SOFT_RO;
		} else {
			FUNC3(0, "Making ro filesystem writeable.\n");

			if (osb->osb_flags & OCFS2_OSB_ERROR_FS) {
				FUNC3(ML_ERROR, "Cannot remount RDWR "
				     "filesystem due to previous errors.\n");
				ret = -EROFS;
				goto unlock_osb;
			}
			incompat_features = FUNC0(sb, ~OCFS2_FEATURE_RO_COMPAT_SUPP);
			if (incompat_features) {
				FUNC3(ML_ERROR, "Cannot remount RDWR because "
				     "of unsupported optional features "
				     "(%x).\n", incompat_features);
				ret = -EINVAL;
				goto unlock_osb;
			}
			sb->s_flags &= ~MS_RDONLY;
			osb->osb_flags &= ~OCFS2_OSB_SOFT_RO;
		}
unlock_osb:
		FUNC11(&osb->osb_lock);
		/* Enable quota accounting after remounting RW */
		if (!ret && !(*flags & MS_RDONLY)) {
			if (FUNC9(sb))
				ret = FUNC8(osb, 1);
			else
				ret = FUNC4(osb);
			if (ret < 0) {
				/* Return back changes... */
				FUNC10(&osb->osb_lock);
				sb->s_flags |= MS_RDONLY;
				osb->osb_flags |= OCFS2_OSB_SOFT_RO;
				FUNC11(&osb->osb_lock);
				goto out;
			}
		}
	}

	if (!ret) {
		/* Only save off the new mount options in case of a successful
		 * remount. */
		if (!(osb->s_feature_incompat & OCFS2_FEATURE_INCOMPAT_XATTR))
			parsed_options.mount_opt &= ~OCFS2_MOUNT_POSIX_ACL;
		osb->s_mount_opt = parsed_options.mount_opt;
		osb->s_atime_quantum = parsed_options.atime_quantum;
		osb->preferred_slot = parsed_options.slot;
		if (parsed_options.commit_interval)
			osb->osb_commit_interval = parsed_options.commit_interval;

		if (!FUNC5(osb))
			FUNC7(osb);
	}
out:
	FUNC12();
	return ret;
}