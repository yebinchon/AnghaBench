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
struct xfs_mount {scalar_t__ m_rtdev_targp; int /*<<< orphan*/  m_ddev_targp; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYNC_TRYLOCK ; 
 int /*<<< orphan*/  SYNC_WAIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xfs_mount*) ; 

int
FUNC6(
	struct xfs_mount	*mp)
{
	int			error, error2 = 0;

	/* push non-blocking */
	FUNC4(mp, 0);
	FUNC3(mp, SYNC_TRYLOCK);

	/* push and block till complete */
	FUNC4(mp, SYNC_WAIT);

	FUNC3(mp, SYNC_WAIT);

	/* write superblock and hoover up shutdown errors */
	error = FUNC5(mp);

	/* make sure all delwri buffers are written out */
	FUNC1(mp->m_ddev_targp, 1);

	/* Ensure the log tail is up to date by loggin a dummy record. */
	error2 = FUNC2(mp);

	/* flush data-only devices */
	if (mp->m_rtdev_targp)
		FUNC0(mp->m_rtdev_targp);

	return error ? error : error2;
}