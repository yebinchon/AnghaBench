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
 int const FUNC0 (int,int) ; 

__attribute__((used)) static void
FUNC1(uint32_t *d, const uint32_t *a, const uint32_t *b)
{
	uint32_t w, cc;
	int i;

	/*
	 * We really compute a - b + 2*p to make sure that the result is
	 * positive.
	 */
	w = a[0] - b[0] - 0x00002;
	d[0] = w & 0x3FFFFFFF;
	w = a[1] - b[1] + FUNC0(w, 30);
	d[1] = w & 0x3FFFFFFF;
	w = a[2] - b[2] + FUNC0(w, 30);
	d[2] = w & 0x3FFFFFFF;
	w = a[3] - b[3] + FUNC0(w, 30) + 0x00080;
	d[3] = w & 0x3FFFFFFF;
	w = a[4] - b[4] + FUNC0(w, 30);
	d[4] = w & 0x3FFFFFFF;
	w = a[5] - b[5] + FUNC0(w, 30);
	d[5] = w & 0x3FFFFFFF;
	w = a[6] - b[6] + FUNC0(w, 30) + 0x02000;
	d[6] = w & 0x3FFFFFFF;
	w = a[7] - b[7] + FUNC0(w, 30) - 0x08000;
	d[7] = w & 0x3FFFFFFF;
	w = a[8] - b[8] + FUNC0(w, 30) + 0x20000;
	d[8] = w & 0xFFFF;
	w >>= 16;
	d[8] &= 0xFFFF;
	d[3] -= w << 6;
	d[6] -= w << 12;
	d[7] += w << 14;
	cc = w;
	for (i = 0; i < 9; i ++) {
		w = d[i] + cc;
		d[i] = w & 0x3FFFFFFF;
		cc = FUNC0(w, 30);
	}
}