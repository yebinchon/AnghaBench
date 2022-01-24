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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(unsigned hh, unsigned hh2)
{
	int i;

	for (i = 0; i < 8; i ++) {
		const char *name;

		name = FUNC1(i);
		if (((hh >> i) & 1) != 0) {
			FUNC0(stderr, " %s", name);
		} else if (((hh2 >> i) & 1) != 0) {
			FUNC0(stderr, " (%s)", name);
		}
	}
}