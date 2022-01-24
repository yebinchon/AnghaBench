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
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int,int) ; 

uint32_t
FUNC3(uint16_t *x, size_t xlen)
{
	uint32_t tw, twk;

	tw = 0;
	twk = 0;
	while (xlen -- > 0) {
		uint32_t w, c;

		c = FUNC1(tw, 0);
		w = x[xlen];
		tw = FUNC2(c, w, tw);
		twk = FUNC2(c, (uint32_t)xlen, twk);
	}
	return (twk << 4) + FUNC0(tw);
}