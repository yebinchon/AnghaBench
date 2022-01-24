#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_7__ {int /*<<< orphan*/ * i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
struct TYPE_8__ {int /*<<< orphan*/  q_core; } ;
typedef  TYPE_2__ xfs_dquot_t ;
struct kstatfs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_DQ_PROJ ; 
 int /*<<< orphan*/  FUNC0 (struct kstatfs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void
FUNC4(
	xfs_inode_t		*ip,
	struct kstatfs		*statp)
{
	xfs_mount_t		*mp = ip->i_mount;
	xfs_dquot_t		*dqp;

	if (!FUNC2(mp, NULL, FUNC1(ip), XFS_DQ_PROJ, 0, &dqp)) {
		FUNC0(statp, &dqp->q_core);
		FUNC3(dqp);
	}
}