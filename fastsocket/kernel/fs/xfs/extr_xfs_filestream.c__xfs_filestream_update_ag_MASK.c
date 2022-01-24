#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_mru_cache_t ;
struct TYPE_19__ {int /*<<< orphan*/ * m_filestream; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_18__ {int di_mode; } ;
struct TYPE_20__ {int /*<<< orphan*/  i_ino; TYPE_2__* i_mount; TYPE_1__ i_d; } ;
typedef  TYPE_3__ xfs_inode_t ;
typedef  scalar_t__ xfs_agnumber_t ;
struct TYPE_21__ {scalar_t__ ag; TYPE_3__* pip; TYPE_3__* ip; } ;
typedef  TYPE_4__ fstrm_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  KM_MAYFAIL ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  item_zone ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(
	xfs_inode_t	*ip,
	xfs_inode_t	*pip,
	xfs_agnumber_t	ag)
{
	int		err = 0;
	xfs_mount_t	*mp;
	xfs_mru_cache_t	*cache;
	fstrm_item_t	*item;
	xfs_agnumber_t	old_ag;
	xfs_inode_t	*old_pip;

	/*
	 * Either ip is a regular file and pip is a directory, or ip is a
	 * directory and pip is NULL.
	 */
	FUNC0(ip && (((ip->i_d.di_mode & S_IFREG) && pip &&
	               (pip->i_d.di_mode & S_IFDIR)) ||
	              ((ip->i_d.di_mode & S_IFDIR) && !pip)));

	mp = ip->i_mount;
	cache = mp->m_filestream;

	item = FUNC11(cache, ip->i_ino);
	if (item) {
		FUNC0(item->ip == ip);
		old_ag = item->ag;
		item->ag = ag;
		old_pip = item->pip;
		item->pip = pip;
		FUNC9(cache);

		/*
		 * If the AG has changed, drop the old ref and take a new one,
		 * effectively transferring the reference from old to new AG.
		 */
		if (ag != old_ag) {
			FUNC8(mp, old_ag);
			FUNC6(mp, ag);
		}

		/*
		 * If ip is a file and its pip has changed, drop the old ref and
		 * take a new one.
		 */
		if (pip && pip != old_pip) {
			FUNC2(old_pip);
			FUNC1(pip);
		}

		FUNC3(mp, ip, old_ag, FUNC7(mp, old_ag),
				ag, FUNC7(mp, ag));
		return 0;
	}

	item = FUNC5(item_zone, KM_MAYFAIL);
	if (!item)
		return ENOMEM;

	item->ag = ag;
	item->ip = ip;
	item->pip = pip;

	err = FUNC10(cache, ip->i_ino, item);
	if (err) {
		FUNC4(item_zone, item);
		return err;
	}

	/* Take a reference on the AG. */
	FUNC6(mp, ag);

	/*
	 * Take a reference on the inode itself regardless of whether it's a
	 * regular file or a directory.
	 */
	FUNC1(ip);

	/*
	 * In the case of a regular file, take a reference on the parent inode
	 * as well to ensure it remains in-core.
	 */
	if (pip)
		FUNC1(pip);

	FUNC3(mp, ip, ag, FUNC7(mp, ag),
			ag, FUNC7(mp, ag));

	return 0;
}