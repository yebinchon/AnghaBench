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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,long) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned char* FUNC2 (size_t) ; 

__attribute__((used)) static unsigned char *
FUNC3(const char *name, long linenum, const char *value, size_t *len)
{
	unsigned char *buf;

	buf = NULL;
	for (;;) {
		size_t u, ptr;
		int acc, z;

		ptr = 0;
		acc = 0;
		z = 0;
		for (u = 0; value[u]; u ++) {
			int c;

			c = value[u];
			if (c >= '0' && c <= '9') {
				c -= '0';
			} else if (c >= 'A' && c <= 'F') {
				c -= 'A' - 10;
			} else if (c >= 'a' && c <= 'f') {
				c -= 'a' - 10;
			} else if (c == ' ' || c == ':') {
				continue;
			} else {
				FUNC1(stderr, "invalid hexadecimal character"
					" in '%s' (line %ld)\n",
					name, linenum);
				FUNC0(EXIT_FAILURE);
			}
			if (z) {
				if (buf != NULL) {
					buf[ptr] = (acc << 4) + c;
				}
				ptr ++;
			} else {
				acc = c;
			}
			z = !z;
		}
		if (z) {
			FUNC1(stderr, "invalid hexadecimal value (partial"
				" byte) in '%s' (line %ld)\n",
				name, linenum);
			FUNC0(EXIT_FAILURE);
		}
		if (buf == NULL) {
			buf = FUNC2(ptr);
		} else {
			*len = ptr;
			return buf;
		}
	}
}