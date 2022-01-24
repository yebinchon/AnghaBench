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
struct TYPE_4__ {int* dmt_stree; int dmt_budmin; int /*<<< orphan*/  dmt_leafidx; } ;
typedef  TYPE_1__ dmtree_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(dmtree_t * tp, int leafno, int splitsz, int newval)
{
	int budsz;
	int cursz;
	s8 *leaf = tp->dmt_stree + FUNC2(tp->dmt_leafidx);

	/* check if the leaf needs to be split.
	 */
	if (leaf[leafno] > tp->dmt_budmin) {
		/* the split occurs by cutting the buddy system in half
		 * at the specified leaf until we reach the specified
		 * size.  pick up the starting split size (current size
		 * - 1 in l2) and the corresponding buddy size.
		 */
		cursz = leaf[leafno] - 1;
		budsz = FUNC0(cursz, tp->dmt_budmin);

		/* split until we reach the specified size.
		 */
		while (cursz >= splitsz) {
			/* update the buddy's leaf with its new value.
			 */
			FUNC1(tp, leafno ^ budsz, cursz);

			/* on to the next size and buddy.
			 */
			cursz -= 1;
			budsz >>= 1;
		}
	}

	/* adjust the dmap tree to reflect the specified leaf's new
	 * value.
	 */
	FUNC1(tp, leafno, newval);
}