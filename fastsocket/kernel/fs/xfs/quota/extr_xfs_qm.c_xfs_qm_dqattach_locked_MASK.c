#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_14__ {int /*<<< orphan*/  di_gid; int /*<<< orphan*/  di_uid; } ;
struct TYPE_15__ {TYPE_5__* i_gdquot; TYPE_5__* i_udquot; TYPE_1__ i_d; int /*<<< orphan*/ * i_mount; } ;
typedef  TYPE_2__ xfs_inode_t ;
typedef  int uint ;
struct TYPE_16__ {struct TYPE_16__* q_gdquot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  XFS_DQ_GROUP ; 
 int /*<<< orphan*/  XFS_DQ_PROJ ; 
 int /*<<< orphan*/  XFS_DQ_USER ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int XFS_QMOPT_DQALLOC ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_5__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_5__*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_5__*,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

int
FUNC9(
	xfs_inode_t	*ip,
	uint		flags)
{
	xfs_mount_t	*mp = ip->i_mount;
	uint		nquotas = 0;
	int		error = 0;

	if (!FUNC8(ip))
		return 0;

	FUNC0(FUNC5(ip, XFS_ILOCK_EXCL));

	if (FUNC3(mp)) {
		error = FUNC7(ip, ip->i_d.di_uid, XFS_DQ_USER,
						flags & XFS_QMOPT_DQALLOC,
						NULL, &ip->i_udquot);
		if (error)
			goto done;
		nquotas++;
	}

	FUNC0(FUNC5(ip, XFS_ILOCK_EXCL));
	if (FUNC2(mp)) {
		error = FUNC1(mp) ?
			FUNC7(ip, ip->i_d.di_gid, XFS_DQ_GROUP,
						flags & XFS_QMOPT_DQALLOC,
						ip->i_udquot, &ip->i_gdquot) :
			FUNC7(ip, FUNC4(ip), XFS_DQ_PROJ,
						flags & XFS_QMOPT_DQALLOC,
						ip->i_udquot, &ip->i_gdquot);
		/*
		 * Don't worry about the udquot that we may have
		 * attached above. It'll get detached, if not already.
		 */
		if (error)
			goto done;
		nquotas++;
	}

	/*
	 * Attach this group quota to the user quota as a hint.
	 * This WON'T, in general, result in a thrash.
	 */
	if (nquotas == 2) {
		FUNC0(FUNC5(ip, XFS_ILOCK_EXCL));
		FUNC0(ip->i_udquot);
		FUNC0(ip->i_gdquot);

		/*
		 * We may or may not have the i_udquot locked at this point,
		 * but this check is OK since we don't depend on the i_gdquot to
		 * be accurate 100% all the time. It is just a hint, and this
		 * will succeed in general.
		 */
		if (ip->i_udquot->q_gdquot == ip->i_gdquot)
			goto done;
		/*
		 * Attach i_gdquot to the gdquot hint inside the i_udquot.
		 */
		FUNC6(ip->i_udquot, ip->i_gdquot);
	}

 done:
#ifdef QUOTADEBUG
	if (! error) {
		if (XFS_IS_UQUOTA_ON(mp))
			ASSERT(ip->i_udquot);
		if (XFS_IS_OQUOTA_ON(mp))
			ASSERT(ip->i_gdquot);
	}
	ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));
#endif
	return error;
}