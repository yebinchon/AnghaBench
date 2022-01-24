#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  qi_quotaofflock; int /*<<< orphan*/ * qi_gquotaip; int /*<<< orphan*/ * qi_uquotaip; int /*<<< orphan*/  qi_dqlist_lock; int /*<<< orphan*/  qi_dqlist; } ;
typedef  TYPE_1__ xfs_quotainfo_t ;
struct TYPE_7__ {TYPE_1__* m_quotainfo; } ;
typedef  TYPE_2__ xfs_mount_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * xfs_Gqm ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void
FUNC6(
	xfs_mount_t	*mp)
{
	xfs_quotainfo_t *qi;

	qi = mp->m_quotainfo;
	FUNC0(qi != NULL);
	FUNC0(xfs_Gqm != NULL);

	/*
	 * Release the reference that XQM kept, so that we know
	 * when the XQM structure should be freed. We cannot assume
	 * that xfs_Gqm is non-null after this point.
	 */
	FUNC5(mp);

	FUNC0(FUNC3(&qi->qi_dqlist));
	FUNC4(&qi->qi_dqlist_lock);

	if (qi->qi_uquotaip) {
		FUNC1(qi->qi_uquotaip);
		qi->qi_uquotaip = NULL; /* paranoia */
	}
	if (qi->qi_gquotaip) {
		FUNC1(qi->qi_gquotaip);
		qi->qi_gquotaip = NULL;
	}
	FUNC4(&qi->qi_quotaofflock);
	FUNC2(qi);
	mp->m_quotainfo = NULL;
}