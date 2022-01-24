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
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

int
FUNC6(int argc, char *argv[])
{
	char buf[PATH_MAX];
	char *p;
	const char *path;
	int ch, qflag, rval;

	qflag = 0;
	while ((ch = FUNC1(argc, argv, "q")) != -1) {
		switch (ch) {
		case 'q':
			qflag = 1;
			break;
		case '?':
		default:
			FUNC4();
		}
	}
	argc -= optind;
	argv += optind;
	path = *argv != NULL ? *argv++ : ".";
	rval  = 0;
	do {
		if ((p = FUNC3(path, buf)) == NULL) {
			if (!qflag)
				FUNC5("%s", path);
			rval = 1;
		} else
			(void)FUNC2("%s\n", p);
	} while ((path = *argv++) != NULL);
	FUNC0(rval);
}