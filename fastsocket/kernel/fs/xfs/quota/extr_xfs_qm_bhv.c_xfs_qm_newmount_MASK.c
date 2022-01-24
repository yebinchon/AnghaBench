#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int sb_qflags; } ;
struct TYPE_13__ {int m_qflags; TYPE_3__ m_sb; } ;
typedef  TYPE_1__ xfs_mount_t ;
typedef  int uint ;

/* Variables and functions */
 int B_TRUE ; 
 int /*<<< orphan*/  EPERM ; 
 int XFS_ALL_QUOTA_ACCT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int XFS_GQUOTA_ACCT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int XFS_PQUOTA_ACCT ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int XFS_UQUOTA_ACCT ; 
 scalar_t__ FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,char*,char*,char*,char*) ; 

int
FUNC11(
	xfs_mount_t	*mp,
	uint		*needquotamount,
	uint		*quotaflags)
{
	uint		quotaondisk;
	uint		uquotaondisk = 0, gquotaondisk = 0, pquotaondisk = 0;

	quotaondisk = FUNC9(&mp->m_sb) &&
				(mp->m_sb.sb_qflags & XFS_ALL_QUOTA_ACCT);

	if (quotaondisk) {
		uquotaondisk = mp->m_sb.sb_qflags & XFS_UQUOTA_ACCT;
		pquotaondisk = mp->m_sb.sb_qflags & XFS_PQUOTA_ACCT;
		gquotaondisk = mp->m_sb.sb_qflags & XFS_GQUOTA_ACCT;
	}

	/*
	 * If the device itself is read-only, we can't allow
	 * the user to change the state of quota on the mount -
	 * this would generate a transaction on the ro device,
	 * which would lead to an I/O error and shutdown
	 */

	if (((uquotaondisk && !FUNC5(mp)) ||
	    (!uquotaondisk &&  FUNC5(mp)) ||
	     (pquotaondisk && !FUNC3(mp)) ||
	    (!pquotaondisk &&  FUNC3(mp)) ||
	     (gquotaondisk && !FUNC1(mp)) ||
	    (!gquotaondisk &&  FUNC2(mp)))  &&
	    FUNC7(mp, "changing quota state")) {
		FUNC10(mp, "please mount with%s%s%s%s.",
			(!quotaondisk ? "out quota" : ""),
			(uquotaondisk ? " usrquota" : ""),
			(pquotaondisk ? " prjquota" : ""),
			(gquotaondisk ? " grpquota" : ""));
		return FUNC0(EPERM);
	}

	if (FUNC4(mp) || quotaondisk) {
		/*
		 * Call mount_quotas at this point only if we won't have to do
		 * a quotacheck.
		 */
		if (quotaondisk && !FUNC6(mp)) {
			/*
			 * If an error occurred, qm_mount_quotas code
			 * has already disabled quotas. So, just finish
			 * mounting, and get on with the boring life
			 * without disk quotas.
			 */
			FUNC8(mp);
		} else {
			/*
			 * Clear the quota flags, but remember them. This
			 * is so that the quota code doesn't get invoked
			 * before we're ready. This can happen when an
			 * inode goes inactive and wants to free blocks,
			 * or via xfs_log_mount_finish.
			 */
			*needquotamount = B_TRUE;
			*quotaflags = mp->m_qflags;
			mp->m_qflags = 0;
		}
	}

	return 0;
}