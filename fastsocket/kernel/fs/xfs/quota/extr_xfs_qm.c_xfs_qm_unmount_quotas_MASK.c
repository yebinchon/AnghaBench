#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* m_quotainfo; scalar_t__ m_rsumip; scalar_t__ m_rbmip; scalar_t__ m_rootip; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_4__ {int /*<<< orphan*/ * qi_gquotaip; int /*<<< orphan*/ * qi_uquotaip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3(
	xfs_mount_t	*mp)
{
	/*
	 * Release the dquots that root inode, et al might be holding,
	 * before we flush quotas and blow away the quotainfo structure.
	 */
	FUNC0(mp->m_rootip);
	FUNC2(mp->m_rootip);
	if (mp->m_rbmip)
		FUNC2(mp->m_rbmip);
	if (mp->m_rsumip)
		FUNC2(mp->m_rsumip);

	/*
	 * Release the quota inodes.
	 */
	if (mp->m_quotainfo) {
		if (mp->m_quotainfo->qi_uquotaip) {
			FUNC1(mp->m_quotainfo->qi_uquotaip);
			mp->m_quotainfo->qi_uquotaip = NULL;
		}
		if (mp->m_quotainfo->qi_gquotaip) {
			FUNC1(mp->m_quotainfo->qi_gquotaip);
			mp->m_quotainfo->qi_gquotaip = NULL;
		}
	}
}