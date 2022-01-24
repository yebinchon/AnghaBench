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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 

void
FUNC3(uint16_t *x,
	const void *src, size_t len, uint32_t ebitlen)
{
	uint32_t bitlen, hbitlen;
	int sc;

	bitlen = ebitlen - (ebitlen >> 4);
	hbitlen = (uint32_t)len << 3;
	if (hbitlen > bitlen) {
		len = (bitlen + 7) >> 3;
		sc = (int)((hbitlen - bitlen) & 7);
	} else {
		sc = 0;
	}
	FUNC2(x, ebitlen);
	FUNC0(x, src, len);
	FUNC1(x, sc);
	x[0] = ebitlen;
}