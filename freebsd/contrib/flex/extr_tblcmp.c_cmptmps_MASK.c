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

/* Variables and functions */
 int /*<<< orphan*/  CSIZE ; 
 int /*<<< orphan*/  JAMSTATE ; 
 int FUNC0 (int /*<<< orphan*/ ,size_t*,int) ; 
 scalar_t__ current_max_dfas ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ lastdfa ; 
 int /*<<< orphan*/  FUNC2 (int*,int,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int numecs ; 
 int nummecs ; 
 int numtemps ; 
 scalar_t__ peakpairs ; 
 scalar_t__ tblend ; 
 size_t* tecbck ; 
 int /*<<< orphan*/  tecfwd ; 
 int* tnxt ; 
 scalar_t__ usemecs ; 

void    FUNC3 ()
{
	int     tmpstorage[CSIZE + 1];
	int *tmp = tmpstorage, i, j;
	int     totaltrans, trans;

	peakpairs = numtemps * numecs + tblend;

	if (usemecs) {
		/* Create equivalence classes based on data gathered on
		 * template transitions.
		 */
		nummecs = FUNC0 (tecfwd, tecbck, numecs);
	}

	else
		nummecs = numecs;

	while (lastdfa + numtemps + 1 >= current_max_dfas)
		FUNC1 ();

	/* Loop through each template. */

	for (i = 1; i <= numtemps; ++i) {
		/* Number of non-jam transitions out of this template. */
		totaltrans = 0;

		for (j = 1; j <= numecs; ++j) {
			trans = tnxt[numecs * i + j];

			if (usemecs) {
				/* The absolute value of tecbck is the
				 * meta-equivalence class of a given
				 * equivalence class, as set up by cre8ecs().
				 */
				if (tecbck[j] > 0) {
					tmp[tecbck[j]] = trans;

					if (trans > 0)
						++totaltrans;
				}
			}

			else {
				tmp[j] = trans;

				if (trans > 0)
					++totaltrans;
			}
		}

		/* It is assumed (in a rather subtle way) in the skeleton
		 * that if we're using meta-equivalence classes, the def[]
		 * entry for all templates is the jam template, i.e.,
		 * templates never default to other non-jam table entries
		 * (e.g., another template)
		 */

		/* Leave room for the jam-state after the last real state. */
		FUNC2 (tmp, nummecs, lastdfa + i + 1, JAMSTATE,
			 totaltrans);
	}
}