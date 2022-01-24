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
struct xfs_perag {int /*<<< orphan*/  pag_ici_reclaimable; int /*<<< orphan*/  pag_agno; int /*<<< orphan*/  pag_ici_root; } ;
struct xfs_inode {TYPE_1__* i_mount; int /*<<< orphan*/  i_ino; } ;
struct TYPE_4__ {int /*<<< orphan*/  m_perag_lock; int /*<<< orphan*/  m_perag_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_ICI_RECLAIM_TAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC6(
	struct xfs_perag	*pag,
	struct xfs_inode	*ip)
{
	FUNC2(&pag->pag_ici_root,
			   FUNC0(ip->i_mount, ip->i_ino),
			   XFS_ICI_RECLAIM_TAG);

	if (!pag->pag_ici_reclaimable) {
		/* propagate the reclaim tag up into the perag radix tree */
		FUNC3(&ip->i_mount->m_perag_lock);
		FUNC2(&ip->i_mount->m_perag_tree,
				FUNC1(ip->i_mount, ip->i_ino),
				XFS_ICI_RECLAIM_TAG);
		FUNC4(&ip->i_mount->m_perag_lock);
		FUNC5(ip->i_mount, pag->pag_agno,
							-1, _RET_IP_);
	}
	pag->pag_ici_reclaimable++;
}