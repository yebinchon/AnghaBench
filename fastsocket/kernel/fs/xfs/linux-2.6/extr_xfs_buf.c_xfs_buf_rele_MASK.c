#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int b_flags; int /*<<< orphan*/  b_rbnode; int /*<<< orphan*/  b_lru_ref; int /*<<< orphan*/  b_hold; int /*<<< orphan*/  b_lru; struct xfs_perag* b_pag; } ;
typedef  TYPE_1__ xfs_buf_t ;
struct xfs_perag {int /*<<< orphan*/  pag_buf_lock; int /*<<< orphan*/  pag_buf_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int XBF_DELWRI ; 
 int XBF_STALE ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int _XBF_DELWRI_Q ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_perag*) ; 

void
FUNC13(
	xfs_buf_t		*bp)
{
	struct xfs_perag	*pag = bp->b_pag;

	FUNC8(bp, _RET_IP_);

	if (!pag) {
		FUNC0(FUNC5(&bp->b_lru));
		FUNC0(FUNC1(&bp->b_rbnode));
		if (FUNC3(&bp->b_hold))
			FUNC9(bp);
		return;
	}

	FUNC0(!FUNC1(&bp->b_rbnode));

	FUNC0(FUNC4(&bp->b_hold) > 0);
	if (FUNC2(&bp->b_hold, &pag->pag_buf_lock)) {
		if (!(bp->b_flags & XBF_STALE) &&
			   FUNC4(&bp->b_lru_ref)) {
			FUNC10(bp);
			FUNC7(&pag->pag_buf_lock);
		} else {
			FUNC11(bp);
			FUNC0(!(bp->b_flags & (XBF_DELWRI|_XBF_DELWRI_Q)));
			FUNC6(&bp->b_rbnode, &pag->pag_buf_tree);
			FUNC7(&pag->pag_buf_lock);
			FUNC12(pag);
			FUNC9(bp);
		}
	}
}