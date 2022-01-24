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
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC5(int argc, char **argv)
{
	const char *fsname;
	int err = 0;
	int c;

	/* check options */
	while ((c = FUNC1(argc, argv, "")) != -1) {
		switch (c) {
		case '?':
			(void) FUNC0(stderr,
			    FUNC2("invalid option '%c'\n"), optopt);
			FUNC3(B_FALSE);
		}
	}

	if (argc != 2) {
		(void) FUNC0(stderr, "%s", FUNC2("wrong number of arguments\n"));
		FUNC3(B_FALSE);
	}

	fsname = argv[1];
	err = FUNC4(g_zfs, fsname);

	return (err);
}