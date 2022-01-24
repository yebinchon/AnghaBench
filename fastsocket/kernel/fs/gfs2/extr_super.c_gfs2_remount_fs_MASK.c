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
struct super_block {int s_flags; struct gfs2_sbd* s_fs_info; } ;
struct gfs2_tune {int gt_statfs_slow; int gt_statfs_quantum; int /*<<< orphan*/  gt_spin; int /*<<< orphan*/  gt_quota_quantum; int /*<<< orphan*/  gt_log_flush_secs; } ;
struct gfs2_args {int ar_statfs_quantum; int /*<<< orphan*/  ar_quota_quantum; int /*<<< orphan*/  ar_commit; scalar_t__ ar_nobarrier; scalar_t__ ar_posix_acl; scalar_t__ ar_spectator; int /*<<< orphan*/  ar_hostdata; int /*<<< orphan*/  ar_locktable; int /*<<< orphan*/  ar_lockproto; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; struct gfs2_args sd_args; struct gfs2_tune sd_tune; } ;

/* Variables and functions */
 int EINVAL ; 
 int MS_POSIXACL ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  SDF_NOBARRIERS ; 
 scalar_t__ FUNC0 (struct gfs2_args*,struct gfs2_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct gfs2_sbd*) ; 
 int FUNC3 (struct gfs2_sbd*) ; 
 int FUNC4 (struct gfs2_args*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  ignore_local_fs ; 
 int /*<<< orphan*/  localcaching ; 
 int /*<<< orphan*/  localflocks ; 
 int /*<<< orphan*/  meta ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spectator ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb, int *flags, char *data)
{
	struct gfs2_sbd *sdp = sb->s_fs_info;
	struct gfs2_args args = sdp->sd_args; /* Default to current settings */
	struct gfs2_tune *gt = &sdp->sd_tune;
	int error;

	FUNC7(&gt->gt_spin);
	args.ar_commit = gt->gt_log_flush_secs;
	args.ar_quota_quantum = gt->gt_quota_quantum;
	if (gt->gt_statfs_slow)
		args.ar_statfs_quantum = 0;
	else
		args.ar_statfs_quantum = gt->gt_statfs_quantum;
	FUNC8(&gt->gt_spin);
	error = FUNC4(&args, data);
	if (error)
		return error;

	/* Not allowed to change locking details */
	if (FUNC9(args.ar_lockproto, sdp->sd_args.ar_lockproto) ||
	    FUNC9(args.ar_locktable, sdp->sd_args.ar_locktable) ||
	    FUNC9(args.ar_hostdata, sdp->sd_args.ar_hostdata))
		return -EINVAL;

	/* Some flags must not be changed */
	if (FUNC0(&args, &sdp->sd_args, spectator) ||
	    FUNC0(&args, &sdp->sd_args, ignore_local_fs) ||
	    FUNC0(&args, &sdp->sd_args, localflocks) ||
	    FUNC0(&args, &sdp->sd_args, localcaching) ||
	    FUNC0(&args, &sdp->sd_args, meta))
		return -EINVAL;

	if (sdp->sd_args.ar_spectator)
		*flags |= MS_RDONLY;

	if ((sb->s_flags ^ *flags) & MS_RDONLY) {
		if (*flags & MS_RDONLY)
			error = FUNC2(sdp);
		else
			error = FUNC3(sdp);
		if (error)
			return error;
	}

	sdp->sd_args = args;
	if (sdp->sd_args.ar_posix_acl)
		sb->s_flags |= MS_POSIXACL;
	else
		sb->s_flags &= ~MS_POSIXACL;
	if (sdp->sd_args.ar_nobarrier)
		FUNC6(SDF_NOBARRIERS, &sdp->sd_flags);
	else
		FUNC1(SDF_NOBARRIERS, &sdp->sd_flags);
	FUNC7(&gt->gt_spin);
	gt->gt_log_flush_secs = args.ar_commit;
	gt->gt_quota_quantum = args.ar_quota_quantum;
	if (args.ar_statfs_quantum) {
		gt->gt_statfs_slow = 0;
		gt->gt_statfs_quantum = args.ar_statfs_quantum;
	}
	else {
		gt->gt_statfs_slow = 1;
		gt->gt_statfs_quantum = 30;
	}
	FUNC8(&gt->gt_spin);

	FUNC5(sdp);
	return 0;
}