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
struct xfs_mount {scalar_t__ m_quotainfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_QMOPT_QUOTALL ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 

void
FUNC2(
	struct xfs_mount	*mp)
{
	if (mp->m_quotainfo) {
		FUNC1(mp, XFS_QMOPT_QUOTALL);
		FUNC0(mp);
	}
}