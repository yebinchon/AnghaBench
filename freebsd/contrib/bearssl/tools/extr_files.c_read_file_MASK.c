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
typedef  int /*<<< orphan*/  bvector ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VEC_INIT ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 
 size_t FUNC8 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

unsigned char *
FUNC9(const char *fname, size_t *len)
{
	bvector vbuf = VEC_INIT;
	FILE *f;

	*len = 0;
	f = FUNC6(fname, "rb");
	if (f == NULL) {
		FUNC7(stderr,
			"ERROR: could not open file '%s' for reading\n", fname);
		return NULL;
	}
	for (;;) {
		unsigned char tmp[1024];
		size_t rlen;

		rlen = FUNC8(tmp, 1, sizeof tmp, f);
		if (rlen == 0) {
			unsigned char *buf;

			if (FUNC5(f)) {
				FUNC7(stderr,
					"ERROR: read error on file '%s'\n",
					fname);
				FUNC4(f);
				return NULL;
			}
			buf = FUNC3(vbuf);
			*len = FUNC2(vbuf);
			FUNC1(vbuf);
			FUNC4(f);
			return buf;
		}
		FUNC0(vbuf, tmp, rlen);
	}
}