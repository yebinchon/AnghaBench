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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 size_t FUNC4 (unsigned char const*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5(const char *fname, const void *data, size_t len)
{
	FILE *f;
	const unsigned char *buf;

	f = FUNC2(fname, "wb");
	if (f == NULL) {
		FUNC3(stderr,
			"ERROR: could not open file '%s' for reading\n", fname);
		return -1;
	}
	buf = data;
	while (len > 0) {
		size_t wlen;

		wlen = FUNC4(buf, 1, len, f);
		if (wlen == 0) {
			FUNC3(stderr,
				"ERROR: could not write all bytes to '%s'\n",
				fname);
			FUNC0(f);
			return -1;
		}
		buf += wlen;
		len -= wlen;
	}
	if (FUNC1(f)) {
		FUNC3(stderr, "ERROR: write error on file '%s'\n", fname);
		FUNC0(f);
		return -1;
	}
	FUNC0(f);
	return 0;
}