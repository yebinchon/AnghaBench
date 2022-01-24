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
struct TYPE_4__ {struct xfs_mount* i_mount; int /*<<< orphan*/  i_ino; } ;
typedef  TYPE_1__ xfs_inode_t ;
struct xfs_perag {int /*<<< orphan*/  pag_ici_lock; int /*<<< orphan*/  pag_agno; int /*<<< orphan*/  pag_ici_root; } ;
struct xfs_mount {int /*<<< orphan*/  m_perag_lock; int /*<<< orphan*/  m_perag_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_ICI_EOFBLOCKS_TAG ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_mount*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct xfs_perag* FUNC8 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_perag*) ; 

void
FUNC10(
	xfs_inode_t	*ip)
{
	struct xfs_mount *mp = ip->i_mount;
	struct xfs_perag *pag;

	pag = FUNC8(mp, FUNC1(mp, ip->i_ino));
	FUNC4(&pag->pag_ici_lock);
	FUNC6(ip);

	FUNC2(&pag->pag_ici_root,
			     FUNC0(ip->i_mount, ip->i_ino),
			     XFS_ICI_EOFBLOCKS_TAG);
	if (!FUNC3(&pag->pag_ici_root, XFS_ICI_EOFBLOCKS_TAG)) {
		/* clear the eofblocks tag from the perag radix tree */
		FUNC4(&ip->i_mount->m_perag_lock);
		FUNC2(&ip->i_mount->m_perag_tree,
				     FUNC1(ip->i_mount, ip->i_ino),
				     XFS_ICI_EOFBLOCKS_TAG);
		FUNC5(&ip->i_mount->m_perag_lock);
		FUNC7(ip->i_mount, pag->pag_agno,
					       -1, _RET_IP_);
	}

	FUNC5(&pag->pag_ici_lock);
	FUNC9(pag);
}