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
 scalar_t__ MAX_CCLS_INCREMENT ; 
 int* ccl_has_nl ; 
 scalar_t__* ccllen ; 
 scalar_t__* cclmap ; 
 scalar_t__* cclng ; 
 scalar_t__ current_maxccls ; 
 scalar_t__ lastccl ; 
 int /*<<< orphan*/  num_reallocs ; 
 int* FUNC0 (int*,scalar_t__) ; 
 scalar_t__* FUNC1 (scalar_t__*,scalar_t__) ; 

int     FUNC2 ()
{
	if (++lastccl >= current_maxccls) {
		current_maxccls += MAX_CCLS_INCREMENT;

		++num_reallocs;

		cclmap =
			FUNC1 (cclmap, current_maxccls);
		ccllen =
			FUNC1 (ccllen, current_maxccls);
		cclng = FUNC1 (cclng, current_maxccls);
		ccl_has_nl =
			FUNC0 (ccl_has_nl,
					       current_maxccls);
	}

	if (lastccl == 1)
		/* we're making the first ccl */
		cclmap[lastccl] = 0;

	else
		/* The new pointer is just past the end of the last ccl.
		 * Since the cclmap points to the \first/ character of a
		 * ccl, adding the length of the ccl to the cclmap pointer
		 * will produce a cursor to the first free space.
		 */
		cclmap[lastccl] =
			cclmap[lastccl - 1] + ccllen[lastccl - 1];

	ccllen[lastccl] = 0;
	cclng[lastccl] = 0;	/* ccl's start out life un-negated */
	ccl_has_nl[lastccl] = false;

	return lastccl;
}