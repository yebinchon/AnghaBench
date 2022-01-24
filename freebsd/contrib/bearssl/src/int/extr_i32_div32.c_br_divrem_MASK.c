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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int,int) ; 

uint32_t
FUNC3(uint32_t hi, uint32_t lo, uint32_t d, uint32_t *r)
{
	/* TODO: optimize this */
	uint32_t q;
	uint32_t ch, cf;
	int k;

	q = 0;
	ch = FUNC0(hi, d);
	hi = FUNC2(ch, 0, hi);
	for (k = 31; k > 0; k --) {
		int j;
		uint32_t w, ctl, hi2, lo2;

		j = 32 - k;
		w = (hi << j) | (lo >> k);
		ctl = FUNC1(w, d) | (hi >> k);
		hi2 = (w - d) >> j;
		lo2 = lo - (d << k);
		hi = FUNC2(ctl, hi2, hi);
		lo = FUNC2(ctl, lo2, lo);
		q |= ctl << k;
	}
	cf = FUNC1(lo, d) | hi;
	q |= cf;
	*r = FUNC2(cf, lo - d, lo);
	return q;
}