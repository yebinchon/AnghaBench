#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  i_flags_lock; int /*<<< orphan*/  i_ino; struct xfs_mount* i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
struct xfs_perag {int /*<<< orphan*/  pag_ici_lock; } ;
struct xfs_mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_IRECLAIMABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_perag*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct xfs_perag* FUNC5 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_perag*) ; 

void
FUNC7(
	xfs_inode_t	*ip)
{
	struct xfs_mount *mp = ip->i_mount;
	struct xfs_perag *pag;

	pag = FUNC5(mp, FUNC0(mp, ip->i_ino));

	FUNC3(&pag->pag_ici_lock);
	FUNC3(&ip->i_flags_lock);
	FUNC2(pag, ip);
	FUNC1(ip, XFS_IRECLAIMABLE);
	FUNC4(&ip->i_flags_lock);
	FUNC4(&pag->pag_ici_lock);
	FUNC6(pag);
}