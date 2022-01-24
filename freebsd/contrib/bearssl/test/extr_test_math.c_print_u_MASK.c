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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(uint32_t *x)
{
	size_t k;

	if (x[0] == 0) {
		FUNC0(" 00000000 (0, 0)");
		return;
	}
	for (k = (x[0] + 31) >> 5; k > 0; k --) {
		FUNC0(" %08lX", (unsigned long)x[k]);
	}
	FUNC0(" (%u, %u)", (unsigned)(x[0] >> 5), (unsigned)(x[0] & 31));
}