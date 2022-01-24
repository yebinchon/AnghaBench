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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*) ; 

__attribute__((used)) static void
FUNC1(uint64_t *A, const void *data, size_t rate)
{
	size_t u;

	for (u = 0; u < rate; u += 8) {
		A[u >> 3] ^= FUNC0((const unsigned char *)data + u);
	}
}