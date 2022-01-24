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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC1(const char *name, const void *data, size_t len)
{
	const unsigned char *buf;
	size_t u;

	buf = data;
	FUNC0(stderr, "%s (len = %lu)", name, (unsigned long)len);
	for (u = 0; u < len; u ++) {
		if ((u & 15) == 0) {
			FUNC0(stderr, "\n%08lX  ", (unsigned long)u);
		} else if ((u & 7) == 0) {
			FUNC0(stderr, " ");
		}
		FUNC0(stderr, " %02x", buf[u]);
	}
	FUNC0(stderr, "\n");
}