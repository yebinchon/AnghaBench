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
typedef  int /*<<< orphan*/  valstr ;
typedef  char* uint64_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 char FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,char**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(int argc, char **argv)
{
	char *poolname;
	int i, ret = 0;
	zpool_handle_t *zhp;
	boolean_t stop = B_FALSE;
	boolean_t noop = B_FALSE;
	boolean_t parsable = B_FALSE;
	char c;

	/* check options */
	while ((c = FUNC1(argc, argv, "nps")) != -1) {
		switch (c) {
		case 'n':
			noop = B_TRUE;
			break;
		case 'p':
			parsable = B_TRUE;
			break;
		case 's':
			stop = B_TRUE;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC4(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* get pool name and check number of arguments */
	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing pool name argument\n"));
		FUNC4(B_FALSE);
	}

	poolname = argv[0];

	if ((zhp = FUNC6(g_zfs, poolname)) == NULL)
		return (1);

	if (stop && noop) {
		(void) FUNC0(stderr, "%s", FUNC2("stop request ignored\n"));
		return (0);
	}

	if (stop) {
		if (argc > 1) {
			(void) FUNC0(stderr, "%s", FUNC2("too many arguments\n"));
			FUNC4(B_FALSE);
		}
		if (FUNC9(zhp) != 0)
			ret = 1;
	} else {
		if (argc < 2) {
			(void) FUNC0(stderr, "%s", FUNC2("missing device\n"));
			FUNC4(B_FALSE);
		}

		for (i = 1; i < argc; i++) {
			if (noop) {
				uint64_t size;

				if (FUNC7(zhp, argv[i],
				    &size) != 0) {
					ret = 1;
					break;
				}
				if (parsable) {
					(void) FUNC3("%s %llu\n",
					    argv[i], size);
				} else {
					char valstr[32];
					FUNC5(size, valstr,
					    sizeof (valstr));
					(void) FUNC3("Memory that will be "
					    "used after removing %s: %s\n",
					    argv[i], valstr);
				}
			} else {
				if (FUNC8(zhp, argv[i]) != 0)
					ret = 1;
			}
		}
	}

	return (ret);
}