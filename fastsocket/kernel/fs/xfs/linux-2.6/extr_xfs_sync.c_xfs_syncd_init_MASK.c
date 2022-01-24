#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * w_completion; struct xfs_mount* w_mount; int /*<<< orphan*/  w_syncer; } ;
struct xfs_mount {int /*<<< orphan*/  m_sync_task; int /*<<< orphan*/  m_fsname; TYPE_1__ m_sync_work; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct xfs_mount*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_sync_worker ; 
 int /*<<< orphan*/  xfssyncd ; 

int
FUNC3(
	struct xfs_mount	*mp)
{
	mp->m_sync_work.w_syncer = xfs_sync_worker;
	mp->m_sync_work.w_mount = mp;
	mp->m_sync_work.w_completion = NULL;
	mp->m_sync_task = FUNC2(xfssyncd, mp, "xfssyncd/%s", mp->m_fsname);
	if (FUNC0(mp->m_sync_task))
		return -FUNC1(mp->m_sync_task);
	return 0;
}