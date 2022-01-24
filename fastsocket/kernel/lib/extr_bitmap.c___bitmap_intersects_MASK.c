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

/* Variables and functions */
 unsigned long const FUNC0 (int) ; 
 int BITS_PER_LONG ; 

int FUNC1(const unsigned long *bitmap1,
				const unsigned long *bitmap2, int bits)
{
	int k, lim = bits/BITS_PER_LONG;
	for (k = 0; k < lim; ++k)
		if (bitmap1[k] & bitmap2[k])
			return 1;

	if (bits % BITS_PER_LONG)
		if ((bitmap1[k] & bitmap2[k]) & FUNC0(bits))
			return 1;
	return 0;
}