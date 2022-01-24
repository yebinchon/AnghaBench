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
 unsigned int FUNC0 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC1(unsigned int secs)
{
	unsigned int period;
	for (period = 63; period > 0; period--) {
		if (FUNC0(period) >= secs)
			return period;
	}
	return 0;
}