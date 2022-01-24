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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(const char *name, const unsigned char *buf, size_t len)
{
	size_t u;

	FUNC0("\nstatic const unsigned char %s[] = {", name);
	for (u = 0; u < len; u ++) {
		if (u != 0) {
			FUNC0(",");
		}
		if (u % 12 == 0) {
			FUNC0("\n\t");
		} else {
			FUNC0(" ");
		}
		FUNC0("0x%02X", buf[u]);
	}
	FUNC0("\n};\n");
}