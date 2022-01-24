#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_55__   TYPE_4__ ;
typedef  struct TYPE_54__   TYPE_3__ ;
typedef  struct TYPE_53__   TYPE_2__ ;
typedef  struct TYPE_52__   TYPE_1__ ;

/* Type definitions */
struct TYPE_53__ {int sb_blocksize; int sb_qflags; int /*<<< orphan*/  sb_rootino; int /*<<< orphan*/  sb_agcount; int /*<<< orphan*/  sb_inprogress; int /*<<< orphan*/  sb_logblocks; int /*<<< orphan*/  sb_logstart; int /*<<< orphan*/  sb_uuid; int /*<<< orphan*/  sb_blocklog; int /*<<< orphan*/  sb_features2; int /*<<< orphan*/  sb_bad_features2; } ;
typedef  TYPE_2__ xfs_sb_t ;
struct TYPE_54__ {int m_update_flags; int m_flags; int m_attr_magicpct; scalar_t__ m_logdev_targp; scalar_t__ m_qflags; scalar_t__ m_ddev_targp; TYPE_2__ m_sb; TYPE_4__* m_rootip; int /*<<< orphan*/  m_maxagi; int /*<<< orphan*/  m_perag_tree; int /*<<< orphan*/  m_perag_lock; scalar_t__ m_dmevmask; int /*<<< orphan*/  m_fixedfsid; int /*<<< orphan*/  m_inode_cluster_size; int /*<<< orphan*/  m_maxioffset; } ;
typedef  TYPE_3__ xfs_mount_t ;
struct TYPE_52__ {int di_mode; } ;
struct TYPE_55__ {scalar_t__ i_ino; TYPE_1__ i_d; } ;
typedef  TYPE_4__ xfs_inode_t ;
typedef  scalar_t__ uint ;
typedef  int /*<<< orphan*/  __uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EFSCORRUPTED ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 int XFS_ALL_QUOTA_ACCT ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int /*<<< orphan*/  XFS_ERRLEVEL_LOW ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_INODE_BIG_CLUSTER_SIZE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int XFS_MOUNT_ATTR2 ; 
 int XFS_MOUNT_NOATTR2 ; 
 int XFS_MOUNT_RDONLY ; 
 int XFS_SB_BAD_FEATURES2 ; 
 int XFS_SB_FEATURES2 ; 
 int XFS_SB_VERSIONNUM ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int FUNC20 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__**) ; 
 int FUNC21 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC22 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC24 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC25 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC29 (TYPE_3__*,int) ; 
 int FUNC30 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_3__*) ; 
 int FUNC33 (TYPE_3__*,scalar_t__*,scalar_t__*) ; 
 int FUNC34 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC35 (TYPE_3__*) ; 
 int FUNC36 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_3__*) ; 
 scalar_t__ FUNC38 (TYPE_2__*) ; 
 scalar_t__ FUNC39 (TYPE_2__*) ; 
 scalar_t__ FUNC40 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC45 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_3__*) ; 
 int FUNC47 (TYPE_3__*) ; 
 int FUNC48 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC49 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC50 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC51 (TYPE_3__*,char*,...) ; 

int
FUNC52(
	xfs_mount_t	*mp)
{
	xfs_sb_t	*sbp = &(mp->m_sb);
	xfs_inode_t	*rip;
	__uint64_t	resblks;
	uint		quotamount = 0;
	uint		quotaflags = 0;
	int		error = 0;

	FUNC28(mp, sbp);

	/*
	 * Check for a mismatched features2 values.  Older kernels
	 * read & wrote into the wrong sb offset for sb_features2
	 * on some platforms due to xfs_sb_t not being 64bit size aligned
	 * when sb_features2 was added, which made older superblock
	 * reading/writing routines swap it as a 64-bit value.
	 *
	 * For backwards compatibility, we make both slots equal.
	 *
	 * If we detect a mismatched field, we OR the set bits into the
	 * existing features2 field in case it has already been modified; we
	 * don't want to lose any features.  We then update the bad location
	 * with the ORed value so that older kernels will see any features2
	 * flags, and mark the two fields as needing updates once the
	 * transaction subsystem is online.
	 */
	if (FUNC38(sbp)) {
		FUNC51(mp, "correcting sb_features alignment problem");
		sbp->sb_features2 |= sbp->sb_bad_features2;
		sbp->sb_bad_features2 = sbp->sb_features2;
		mp->m_update_flags |= XFS_SB_FEATURES2 | XFS_SB_BAD_FEATURES2;

		/*
		 * Re-check for ATTR2 in case it was found in bad_features2
		 * slot.
		 */
		if (FUNC39(&mp->m_sb) &&
		   !(mp->m_flags & XFS_MOUNT_NOATTR2))
			mp->m_flags |= XFS_MOUNT_ATTR2;
	}

	if (FUNC39(&mp->m_sb) &&
	   (mp->m_flags & XFS_MOUNT_NOATTR2)) {
		FUNC41(&mp->m_sb);
		mp->m_update_flags |= XFS_SB_FEATURES2;

		/* update sb_versionnum for the clearing of the morebits */
		if (!sbp->sb_features2)
			mp->m_update_flags |= XFS_SB_VERSIONNUM;
	}

	/*
	 * Check if sb_agblocks is aligned at stripe boundary
	 * If sb_agblocks is NOT aligned turn off m_dalign since
	 * allocator alignment is within an ag, therefore ag has
	 * to be aligned at stripe boundary.
	 */
	error = FUNC47(mp);
	if (error)
		goto out;

	FUNC13(mp);
	FUNC14(mp, XFS_DATA_FORK);
	FUNC14(mp, XFS_ATTR_FORK);
	FUNC19(mp);

	FUNC44(mp);

	mp->m_maxioffset = FUNC27(sbp->sb_blocklog);

	error = FUNC48(mp);
	if (error)
		goto out;

	/*
	 * Set the minimum read and write sizes
	 */
	FUNC45(mp);

	/* set the low space thresholds for dynamic preallocation */
	FUNC43(mp);

	/*
	 * Set the inode cluster size.
	 * This may still be overridden by the file system
	 * block size if it is larger than the chosen cluster size.
	 */
	mp->m_inode_cluster_size = XFS_INODE_BIG_CLUSTER_SIZE;

	/*
	 * Set inode alignment fields
	 */
	FUNC42(mp);

	/*
	 * Check that the data (and log if separate) are an ok size.
	 */
	error = FUNC15(mp);
	if (error)
		goto out_remove_uuid;

	/*
	 * Initialize realtime fields in the mount structure
	 */
	error = FUNC35(mp);
	if (error) {
		FUNC51(mp, "RT mount failed");
		goto out_remove_uuid;
	}

	/*
	 *  Copies the low order bits of the timestamp and the randomly
	 *  set "sequence" number out of a UUID.
	 */
	FUNC12(&sbp->sb_uuid, mp->m_fixedfsid);

	mp->m_dmevmask = 0;	/* not persistent; set after each mount */

	FUNC17(mp);

	/*
	 * Initialize the attribute manager's entries.
	 */
	mp->m_attr_magicpct = (mp->m_sb.sb_blocksize * 37) / 100;

	/*
	 * Initialize the precomputed transaction reservations values.
	 */
	FUNC46(mp);

	/*
	 * Allocate and initialize the per-ag data.
	 */
	FUNC10(&mp->m_perag_lock);
	FUNC1(&mp->m_perag_tree, GFP_ATOMIC);
	error = FUNC21(mp, sbp->sb_agcount, &mp->m_maxagi);
	if (error) {
		FUNC51(mp, "Failed per-ag init: %d", error);
		goto out_remove_uuid;
	}

	if (!sbp->sb_logblocks) {
		FUNC51(mp, "no log defined");
		FUNC4("xfs_mountfs", XFS_ERRLEVEL_LOW, mp);
		error = FUNC3(EFSCORRUPTED);
		goto out_free_perag;
	}

	/*
	 * log's mount-time initialization. Perform 1st part recovery if needed
	 */
	error = FUNC24(mp, mp->m_logdev_targp,
			      FUNC6(mp, sbp->sb_logstart),
			      FUNC5(mp, sbp->sb_logblocks));
	if (error) {
		FUNC51(mp, "log mount failed");
		goto out_fail_wait;
	}

	/*
	 * Now the log is mounted, we know if it was an unclean shutdown or
	 * not. If it was, with the first phase of recovery has completed, we
	 * have consistent AG blocks on disk. We have not recovered EFIs yet,
	 * but they are recovered transactionally in the second recovery phase
	 * later.
	 *
	 * Hence we can safely re-initialise incore superblock counters from
	 * the per-ag data. These may not be correct if the filesystem was not
	 * cleanly unmounted, so we need to wait for recovery to finish before
	 * doing this.
	 *
	 * If the filesystem was cleanly unmounted, then we can trust the
	 * values in the superblock to be correct and we don't need to do
	 * anything here.
	 *
	 * If we are currently making the filesystem, the initialisation will
	 * fail as the perag data is in an undefined state.
	 */
	if (FUNC40(&mp->m_sb) &&
	    !FUNC9(mp) &&
	     !mp->m_sb.sb_inprogress) {
		error = FUNC22(mp, sbp->sb_agcount);
		if (error)
			goto out_fail_wait;
	}

	/*
	 * Get and sanity-check the root inode.
	 * Save the pointer to it in the mount structure.
	 */
	error = FUNC20(mp, NULL, sbp->sb_rootino, 0, XFS_ILOCK_EXCL, &rip);
	if (error) {
		FUNC51(mp, "failed to read root inode");
		goto out_log_dealloc;
	}

	FUNC0(rip != NULL);

	if (FUNC11((rip->i_d.di_mode & S_IFMT) != S_IFDIR)) {
		FUNC51(mp, "corrupted root inode %llu: not a directory",
			(unsigned long long)rip->i_ino);
		FUNC23(rip, XFS_ILOCK_EXCL);
		FUNC4("xfs_mountfs_int(2)", XFS_ERRLEVEL_LOW,
				 mp);
		error = FUNC3(EFSCORRUPTED);
		goto out_rele_rip;
	}
	mp->m_rootip = rip;	/* save it */

	FUNC23(rip, XFS_ILOCK_EXCL);

	/*
	 * Initialize realtime inode pointers in the mount structure
	 */
	error = FUNC36(mp);
	if (error) {
		/*
		 * Free up the root inode.
		 */
		FUNC51(mp, "failed to read RT inodes");
		goto out_rele_rip;
	}

	/*
	 * If this is a read-only mount defer the superblock updates until
	 * the next remount into writeable mode.  Otherwise we would never
	 * perform the update e.g. for the root filesystem.
	 */
	if (mp->m_update_flags && !(mp->m_flags & XFS_MOUNT_RDONLY)) {
		error = FUNC29(mp, mp->m_update_flags);
		if (error) {
			FUNC51(mp, "failed to write sb changes");
			goto out_rtunmount;
		}
	}

	/*
	 * Initialise the XFS quota management subsystem for this mount
	 */
	if (FUNC8(mp)) {
		error = FUNC33(mp, &quotamount, &quotaflags);
		if (error)
			goto out_rtunmount;
	} else {
		FUNC0(!FUNC7(mp));

		/*
		 * If a file system had quotas running earlier, but decided to
		 * mount without -o uquota/pquota/gquota options, revoke the
		 * quotachecked license.
		 */
		if (mp->m_sb.sb_qflags & XFS_ALL_QUOTA_ACCT) {
			FUNC31(mp, "resetting quota flags");
			error = FUNC30(mp);
			if (error)
				return error;
		}
	}

	/*
	 * Finish recovering the file system.  This part needed to be
	 * delayed until after the root and real-time bitmap inodes
	 * were consistently read in.
	 */
	error = FUNC25(mp);
	if (error) {
		FUNC51(mp, "log mount finish failed");
		goto out_rtunmount;
	}

	/*
	 * Complete the quota initialisation, post-log-replay component.
	 */
	if (quotamount) {
		FUNC0(mp->m_qflags == 0);
		mp->m_qflags = quotaflags;

		FUNC32(mp);
	}

	/*
	 * Now we are mounted, reserve a small amount of unused space for
	 * privileged transactions. This is needed so that transaction
	 * space required for critical operations can dip into this pool
	 * when at ENOSPC. This is needed for operations like create with
	 * attr, unwritten extent conversion at ENOSPC, etc. Data allocations
	 * are not allowed to use this reserved space.
	 *
	 * This may drive us straight to ENOSPC on mount, but that implies
	 * we were already there on the last unmount. Warn if this occurs.
	 */
	if (!(mp->m_flags & XFS_MOUNT_RDONLY)) {
		resblks = FUNC16(mp);
		error = FUNC34(mp, &resblks, NULL);
		if (error)
			FUNC51(mp,
	"Unable to allocate reserve blocks. Continuing without reserve pool.");
	}

	return 0;

 out_rtunmount:
	FUNC37(mp);
 out_rele_rip:
	FUNC2(rip);
 out_log_dealloc:
	FUNC26(mp);
 out_fail_wait:
	if (mp->m_logdev_targp && mp->m_logdev_targp != mp->m_ddev_targp)
		FUNC50(mp->m_logdev_targp);
	FUNC50(mp->m_ddev_targp);
 out_free_perag:
	FUNC18(mp);
 out_remove_uuid:
	FUNC49(mp);
 out:
	return error;
}