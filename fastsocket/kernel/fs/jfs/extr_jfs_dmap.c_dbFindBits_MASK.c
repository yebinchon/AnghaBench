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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DBWORD ; 
 int ONES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(u32 word, int l2nb)
{
	int bitno, nb;
	u32 mask;

	/* get the number of bits.
	 */
	nb = 1 << l2nb;
	FUNC1(nb <= DBWORD);

	/* complement the word so we can use a mask (i.e. 0s represent
	 * free bits) and compute the mask.
	 */
	word = ~word;
	mask = ONES << (DBWORD - nb);

	/* scan the word for nb free bits at nb alignments.
	 */
	for (bitno = 0; mask != 0; bitno += nb, mask >>= nb) {
		if ((mask & word) == mask)
			break;
	}

	FUNC0(bitno < 32);

	/* return the bit number.
	 */
	return (bitno);
}