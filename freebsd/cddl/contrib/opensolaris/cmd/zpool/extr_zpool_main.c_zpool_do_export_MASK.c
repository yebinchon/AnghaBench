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
typedef  void* boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  history_str ; 
 void* log_history ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*) ; 

int
FUNC9(int argc, char **argv)
{
	boolean_t force = B_FALSE;
	boolean_t hardforce = B_FALSE;
	int c;
	zpool_handle_t *zhp;
	int ret;
	int i;

	/* check options */
	while ((c = FUNC1(argc, argv, "fF")) != -1) {
		switch (c) {
		case 'f':
			force = B_TRUE;
			break;
		case 'F':
			hardforce = B_TRUE;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC3(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* check arguments */
	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing pool argument\n"));
		FUNC3(B_FALSE);
	}

	ret = 0;
	for (i = 0; i < argc; i++) {
		if ((zhp = FUNC8(g_zfs, argv[i])) == NULL) {
			ret = 1;
			continue;
		}

		if (FUNC5(zhp, force) != 0) {
			ret = 1;
			FUNC4(zhp);
			continue;
		}

		/* The history must be logged as part of the export */
		log_history = B_FALSE;

		if (hardforce) {
			if (FUNC7(zhp, history_str) != 0)
				ret = 1;
		} else if (FUNC6(zhp, force, history_str) != 0) {
			ret = 1;
		}

		FUNC4(zhp);
	}

	return (ret);
}