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
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*,struct option*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  no_argument ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*) ; 

int
FUNC9(int argc, char **argv)
{
	boolean_t discard;
	char *pool;
	zpool_handle_t *zhp;
	int c, err;

	struct option long_options[] = {
		{"discard", no_argument, NULL, 'd'},
		{0, 0, 0, 0}
	};

	discard = B_FALSE;
	while ((c = FUNC1(argc, argv, ":d", long_options, NULL)) != -1) {
		switch (c) {
		case 'd':
			discard = B_TRUE;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC4(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing pool argument\n"));
		FUNC4(B_FALSE);
	}

	if (argc > 1) {
		(void) FUNC0(stderr, "%s", FUNC2("too many arguments\n"));
		FUNC4(B_FALSE);
	}

	pool = argv[0];

	if ((zhp = FUNC8(g_zfs, pool)) == NULL) {
		/* As a special case, check for use of '/' in the name */
		if (FUNC3(pool, '/') != NULL)
			(void) FUNC0(stderr, "%s", FUNC2("'zpool checkpoint' "
			    "doesn't work on datasets. To save the state "
			    "of a dataset from a specific point in time "
			    "please use 'zfs snapshot'\n"));
		return (1);
	}

	if (discard)
		err = (FUNC7(zhp) != 0);
	else
		err = (FUNC5(zhp) != 0);

	FUNC6(zhp);

	return (err);
}