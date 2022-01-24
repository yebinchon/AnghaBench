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
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
struct xfs_perag {int /*<<< orphan*/  pag_ref; } ;
struct xfs_mount {int /*<<< orphan*/  m_perag_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct xfs_perag* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct xfs_perag *
FUNC7(struct xfs_mount *mp, xfs_agnumber_t agno)
{
	struct xfs_perag	*pag;
	int			ref = 0;

	FUNC4();
	pag = FUNC3(&mp->m_perag_tree, agno);
	if (pag) {
		FUNC0(FUNC2(&pag->pag_ref) >= 0);
		ref = FUNC1(&pag->pag_ref);
	}
	FUNC5();
	FUNC6(mp, agno, ref, _RET_IP_);
	return pag;
}