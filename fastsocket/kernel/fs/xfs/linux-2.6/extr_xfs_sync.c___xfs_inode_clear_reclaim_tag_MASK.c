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
struct TYPE_7__ {int /*<<< orphan*/  pag_ici_root; } ;
typedef  TYPE_1__ xfs_perag_t ;
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_ino; } ;
typedef  TYPE_2__ xfs_inode_t ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_ICI_RECLAIM_TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(
	xfs_mount_t	*mp,
	xfs_perag_t	*pag,
	xfs_inode_t	*ip)
{
	FUNC2(&pag->pag_ici_root,
			FUNC0(mp, ip->i_ino), XFS_ICI_RECLAIM_TAG);
	FUNC1(pag, ip);
}