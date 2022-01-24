#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_list_t ;
struct TYPE_5__ {int cb_iteration; scalar_t__ cb_namewidth; scalar_t__ cb_verbose; int /*<<< orphan*/ * cb_list; } ;
typedef  TYPE_1__ iostat_cbdata_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 scalar_t__ NODATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int*,char**,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  get_namewidth ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char**,char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/ * optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int,char**,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  print_iostat ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  refresh_iostat ; 
 int /*<<< orphan*/  FUNC15 (unsigned long) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ timestamp_fmt ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 

int
FUNC17(int argc, char **argv)
{
	int c;
	int ret;
	int npools;
	unsigned long interval = 0, count = 0;
	zpool_list_t *list;
	boolean_t verbose = B_FALSE;
	iostat_cbdata_t cb;

	/* check options */
	while ((c = FUNC4(argc, argv, "T:v")) != -1) {
		switch (c) {
		case 'T':
			FUNC3(*optarg);
			break;
		case 'v':
			verbose = B_TRUE;
			break;
		case '?':
			(void) FUNC1(stderr, FUNC5("invalid option '%c'\n"),
			    optopt);
			FUNC16(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	FUNC2(&argc, argv, &interval, &count);

	/*
	 * Construct the list of all interesting pools.
	 */
	ret = 0;
	if ((list = FUNC8(argc, argv, NULL, &ret)) == NULL)
		return (1);

	if (FUNC6(list) == 0 && argc != 0) {
		FUNC7(list);
		return (1);
	}

	if (FUNC6(list) == 0 && interval == 0) {
		FUNC7(list);
		(void) FUNC1(stderr, "%s", FUNC5("no pools available\n"));
		return (1);
	}

	/*
	 * Enter the main iostat loop.
	 */
	cb.cb_list = list;
	cb.cb_verbose = verbose;
	cb.cb_iteration = 0;
	cb.cb_namewidth = 0;

	for (;;) {
		FUNC10(list);

		if ((npools = FUNC6(list)) == 0)
			break;

		/*
		 * Refresh all statistics.  This is done as an explicit step
		 * before calculating the maximum name width, so that any
		 * configuration changes are properly accounted for.
		 */
		(void) FUNC9(list, B_FALSE, refresh_iostat, &cb);

		/*
		 * Iterate over all pools to determine the maximum width
		 * for the pool / device name column across all pools.
		 */
		cb.cb_namewidth = 0;
		(void) FUNC9(list, B_FALSE, get_namewidth, &cb);

		if (timestamp_fmt != NODATE)
			FUNC13(timestamp_fmt);

		/*
		 * If it's the first time, or verbose mode, print the header.
		 */
		if (++cb.cb_iteration == 1 || verbose)
			FUNC11(&cb);

		(void) FUNC9(list, B_FALSE, print_iostat, &cb);

		/*
		 * If there's more than one pool, and we're not in verbose mode
		 * (which prints a separator for us), then print a separator.
		 */
		if (npools > 1 && !verbose)
			FUNC12(&cb);

		if (verbose)
			(void) FUNC14("\n");

		/*
		 * Flush the output so that redirection to a file isn't buffered
		 * indefinitely.
		 */
		(void) FUNC0(stdout);

		if (interval == 0)
			break;

		if (count != 0 && --count == 0)
			break;

		(void) FUNC15(interval);
	}

	FUNC7(list);

	return (ret);
}