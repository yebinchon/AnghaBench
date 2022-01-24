#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ m_quotainfo; } ;
typedef  TYPE_1__ xfs_mount_t ;
typedef  int /*<<< orphan*/  uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC2(
	xfs_mount_t	*mp,
	uint		flags)
{
	int		ndquots;

	/*
	 * Purge the dquot cache.
	 * None of the dquots should really be busy at this point.
	 */
	if (mp->m_quotainfo) {
		while ((ndquots = FUNC1(mp, flags))) {
			FUNC0(ndquots * 10);
		}
	}
	return 0;
}