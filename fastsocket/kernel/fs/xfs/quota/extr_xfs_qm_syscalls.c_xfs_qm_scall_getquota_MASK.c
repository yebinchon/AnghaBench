#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_5__ {int /*<<< orphan*/  q_core; } ;
typedef  TYPE_1__ xfs_dquot_t ;
typedef  int /*<<< orphan*/  xfs_dqid_t ;
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  fs_disk_quota_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(
	xfs_mount_t	*mp,
	xfs_dqid_t	id,
	uint		type,
	fs_disk_quota_t *out)
{
	xfs_dquot_t	*dqp;
	int		error;

	/*
	 * Try to get the dquot. We don't want it allocated on disk, so
	 * we aren't passing the XFS_QMOPT_DOALLOC flag. If it doesn't
	 * exist, we'll get ENOENT back.
	 */
	if ((error = FUNC2(mp, NULL, id, type, 0, &dqp))) {
		return (error);
	}

	/*
	 * If everything's NULL, this dquot doesn't quite exist as far as
	 * our utility programs are concerned.
	 */
	if (FUNC1(dqp)) {
		FUNC3(dqp);
		return FUNC0(ENOENT);
	}
	/* xfs_qm_dqprint(dqp); */
	/*
	 * Convert the disk dquot to the exportable format
	 */
	FUNC4(mp, &dqp->q_core, out);
	FUNC3(dqp);
	return (error ? FUNC0(EFAULT) : 0);
}