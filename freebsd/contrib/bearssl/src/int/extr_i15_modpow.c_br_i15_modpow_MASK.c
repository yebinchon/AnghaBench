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
typedef  unsigned char uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char,int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,size_t) ; 

void
FUNC5(uint16_t *x,
	const unsigned char *e, size_t elen,
	const uint16_t *m, uint16_t m0i, uint16_t *t1, uint16_t *t2)
{
	size_t mlen;
	unsigned k;

	mlen = ((m[0] + 31) >> 4) * sizeof m[0];
	FUNC4(t1, x, mlen);
	FUNC2(t1, m);
	FUNC3(x, m[0]);
	x[1] = 1;
	for (k = 0; k < ((unsigned)elen << 3); k ++) {
		uint32_t ctl;

		ctl = (e[elen - 1 - (k >> 3)] >> (k & 7)) & 1;
		FUNC1(t2, x, t1, m, m0i);
		FUNC0(ctl, x, t2, mlen);
		FUNC1(t2, t1, t1, m, m0i);
		FUNC4(t1, t2, mlen);
	}
}