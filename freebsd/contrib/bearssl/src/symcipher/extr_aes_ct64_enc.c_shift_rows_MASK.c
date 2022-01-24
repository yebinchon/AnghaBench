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
typedef  int uint64_t ;

/* Variables and functions */

__attribute__((used)) static inline void
FUNC0(uint64_t *q)
{
	int i;

	for (i = 0; i < 8; i ++) {
		uint64_t x;

		x = q[i];
		q[i] = (x & (uint64_t)0x000000000000FFFF)
			| ((x & (uint64_t)0x00000000FFF00000) >> 4)
			| ((x & (uint64_t)0x00000000000F0000) << 12)
			| ((x & (uint64_t)0x0000FF0000000000) >> 8)
			| ((x & (uint64_t)0x000000FF00000000) << 8)
			| ((x & (uint64_t)0xF000000000000000) >> 12)
			| ((x & (uint64_t)0x0FFF000000000000) << 4);
	}
}