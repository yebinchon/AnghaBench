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
typedef  int /*<<< orphan*/  dt_ahashent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ dt_keysort ; 

__attribute__((used)) static int
FUNC3(const void *lhs, const void *rhs)
{
	dt_ahashent_t **lh = *((dt_ahashent_t ***)lhs);
	dt_ahashent_t **rh = *((dt_ahashent_t ***)rhs);
	int i, rval;

	if (dt_keysort) {
		/*
		 * If we're sorting on keys, we need to scan until we find the
		 * last entry -- that's the representative key.  (The order of
		 * the bundle is values followed by key to accommodate the
		 * default behavior of sorting by value.)  If the keys are
		 * equal, we'll fall into the value comparison loop, below.
		 */
		for (i = 0; lh[i + 1] != NULL; i++)
			continue;

		FUNC0(i != 0);
		FUNC0(rh[i + 1] == NULL);

		if ((rval = FUNC1(&lh[i], &rh[i])) != 0)
			return (rval);
	}

	for (i = 0; ; i++) {
		if (lh[i + 1] == NULL) {
			/*
			 * All of the values are equal; if we're sorting on
			 * keys, then we're only here because the keys were
			 * found to be equal and these records are therefore
			 * equal.  If we're not sorting on keys, we'll use the
			 * key comparison from the representative key as the
			 * tie-breaker.
			 */
			if (dt_keysort)
				return (0);

			FUNC0(i != 0);
			FUNC0(rh[i + 1] == NULL);
			return (FUNC1(&lh[i], &rh[i]));
		} else {
			if ((rval = FUNC2(&lh[i], &rh[i])) != 0)
				return (rval);
		}
	}
}