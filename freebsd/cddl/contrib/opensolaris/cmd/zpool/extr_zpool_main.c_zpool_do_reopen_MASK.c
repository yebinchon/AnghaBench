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
typedef  int /*<<< orphan*/  zpool_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(int argc, char **argv)
{
	int c;
	int ret = 0;
	zpool_handle_t *zhp;
	char *pool;

	/* check options */
	while ((c = FUNC1(argc, argv, "")) != -1) {
		switch (c) {
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC3(B_FALSE);
		}
	}

	argc--;
	argv++;

	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing pool name\n"));
		FUNC3(B_FALSE);
	}

	if (argc > 1) {
		(void) FUNC0(stderr, "%s", FUNC2("too many arguments\n"));
		FUNC3(B_FALSE);
	}

	pool = argv[0];
	if ((zhp = FUNC5(g_zfs, pool)) == NULL)
		return (1);

	ret = FUNC6(zhp);
	FUNC4(zhp);
	return (ret);
}