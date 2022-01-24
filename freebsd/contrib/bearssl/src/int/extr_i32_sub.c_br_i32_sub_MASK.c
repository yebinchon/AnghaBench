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
FUNC3(uint32_t *a, const uint32_t *b, uint32_t ctl)
{
	uint32_t cc;
	size_t u, m;

	cc = 0;
	m = (a[0] + 63) >> 5;
	for (u = 1; u < m; u ++) {
		uint32_t aw, bw, naw;

		aw = a[u];
		bw = b[u];
		naw = aw - bw - cc;

		/*
		 * Carry is 1 if naw > aw. Carry is 1 also if naw == aw
		 * AND the carry was already 1.
		 */
		cc = (cc & FUNC0(naw, aw)) | FUNC1(naw, aw);
		a[u] = FUNC2(ctl, naw, aw);
	}
	return cc;
}