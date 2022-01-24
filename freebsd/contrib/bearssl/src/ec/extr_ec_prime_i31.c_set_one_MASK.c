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
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC1(uint32_t *x, const uint32_t *p)
{
	size_t plen;

	plen = (p[0] + 63) >> 5;
	FUNC0(x, 0, plen * sizeof *x);
	x[0] = p[0];
	x[1] = 0x00000001;
}