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
typedef  int s8 ;
struct TYPE_4__ {int dmt_budmin; int* dmt_stree; int /*<<< orphan*/  dmt_nleafs; int /*<<< orphan*/  dmt_leafidx; } ;
typedef  TYPE_1__ dmtree_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EIO ; 
 int NOFREE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(dmtree_t * tp, int leafno, int newval)
{
	int budsz, buddy;
	s8 *leaf;

	/* can the new leaf value require a join with other leaves ?
	 */
	if (newval >= tp->dmt_budmin) {
		/* pickup a pointer to the leaves of the tree.
		 */
		leaf = tp->dmt_stree + FUNC2(tp->dmt_leafidx);

		/* try to join the specified leaf into a large binary
		 * buddy system.  the join proceeds by attempting to join
		 * the specified leafno with its buddy (leaf) at new value.
		 * if the join occurs, we attempt to join the left leaf
		 * of the joined buddies with its buddy at new value + 1.
		 * we continue to join until we find a buddy that cannot be
		 * joined (does not have a value equal to the size of the
		 * last join) or until all leaves have been joined into a
		 * single system.
		 *
		 * get the buddy size (number of words covered) of
		 * the new value.
		 */
		budsz = FUNC0(newval, tp->dmt_budmin);

		/* try to join.
		 */
		while (budsz < FUNC2(tp->dmt_nleafs)) {
			/* get the buddy leaf.
			 */
			buddy = leafno ^ budsz;

			/* if the leaf's new value is greater than its
			 * buddy's value, we join no more.
			 */
			if (newval > leaf[buddy])
				break;

			/* It shouldn't be less */
			if (newval < leaf[buddy])
				return -EIO;

			/* check which (leafno or buddy) is the left buddy.
			 * the left buddy gets to claim the blocks resulting
			 * from the join while the right gets to claim none.
			 * the left buddy is also eligable to participate in
			 * a join at the next higher level while the right
			 * is not.
			 *
			 */
			if (leafno < buddy) {
				/* leafno is the left buddy.
				 */
				FUNC1(tp, buddy, NOFREE);
			} else {
				/* buddy is the left buddy and becomes
				 * leafno.
				 */
				FUNC1(tp, leafno, NOFREE);
				leafno = buddy;
			}

			/* on to try the next join.
			 */
			newval += 1;
			budsz <<= 1;
		}
	}

	/* update the leaf value.
	 */
	FUNC1(tp, leafno, newval);

	return 0;
}