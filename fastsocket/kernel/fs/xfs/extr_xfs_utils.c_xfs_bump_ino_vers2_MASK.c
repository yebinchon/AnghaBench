#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* t_mountp; } ;
typedef  TYPE_2__ xfs_trans_t ;
struct TYPE_11__ {int /*<<< orphan*/  m_sb_lock; int /*<<< orphan*/  m_sb; } ;
typedef  TYPE_3__ xfs_mount_t ;
struct TYPE_9__ {int di_version; int /*<<< orphan*/ * di_pad; scalar_t__ di_onlink; } ;
struct TYPE_12__ {TYPE_1__ i_d; } ;
typedef  TYPE_4__ xfs_inode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_SB_VERSIONNUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(
	xfs_trans_t	*tp,
	xfs_inode_t	*ip)
{
	xfs_mount_t	*mp;

	FUNC0(FUNC4(ip, XFS_ILOCK_EXCL));
	FUNC0(ip->i_d.di_version == 1);

	ip->i_d.di_version = 2;
	ip->i_d.di_onlink = 0;
	FUNC1(&(ip->i_d.di_pad[0]), 0, sizeof(ip->i_d.di_pad));
	mp = tp->t_mountp;
	if (!FUNC7(&mp->m_sb)) {
		FUNC2(&mp->m_sb_lock);
		if (!FUNC7(&mp->m_sb)) {
			FUNC6(&mp->m_sb);
			FUNC3(&mp->m_sb_lock);
			FUNC5(tp, XFS_SB_VERSIONNUM);
		} else {
			FUNC3(&mp->m_sb_lock);
		}
	}
	/* Caller must log the inode */
}