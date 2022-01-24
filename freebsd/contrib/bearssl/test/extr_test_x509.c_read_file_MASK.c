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
 char* DIRNAME ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (scalar_t__) ; 

__attribute__((used)) static unsigned char *
FUNC10(const char *name, size_t *len)
{
	FILE *f;
	unsigned char *buf;

#ifdef DIRNAME
	char *dname;

	dname = xmalloc(strlen(DIRNAME) + strlen(name) + 2);
	sprintf(dname, "%s/%s", DIRNAME, name);
	name = dname;
#endif
	f = FUNC3(name, "rb");
	if (f == NULL) {
		FUNC4(stderr, "could not open file '%s'\n", name);
		FUNC0(EXIT_FAILURE);
	}
	buf = FUNC5(f, len);
	if (FUNC2(f)) {
		FUNC4(stderr, "read error on file '%s'\n", name);
		FUNC0(EXIT_FAILURE);
	}
	FUNC1(f);
#ifdef DIRNAME
	xfree(dname);
#endif
	return buf;
}