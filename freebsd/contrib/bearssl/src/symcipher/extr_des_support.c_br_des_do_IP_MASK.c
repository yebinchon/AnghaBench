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

void
FUNC0(uint32_t *xl, uint32_t *xr)
{
	/*
	 * Permutation algorithm is initially from Richard Outerbridge;
	 * implementation here is adapted from Crypto++ "des.cpp" file
	 * (which is in public domain).
	 */
	uint32_t l, r, t;

	l = *xl;
	r = *xr;
	t = ((l >>  4) ^ r) & (uint32_t)0x0F0F0F0F;
	r ^= t;
	l ^= t <<  4;
	t = ((l >> 16) ^ r) & (uint32_t)0x0000FFFF;
	r ^= t;
	l ^= t << 16;
	t = ((r >>  2) ^ l) & (uint32_t)0x33333333;
	l ^= t;
	r ^= t <<  2;
	t = ((r >>  8) ^ l) & (uint32_t)0x00FF00FF;
	l ^= t;
	r ^= t <<  8;
	t = ((l >>  1) ^ r) & (uint32_t)0x55555555;
	r ^= t;
	l ^= t <<  1;
	*xl = l;
	*xr = r;
}