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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  set_callback ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(int argc, char **argv)
{
	nvlist_t *props = NULL;
	int ds_start = -1; /* argv idx of first dataset arg */
	int ret = 0;

	/* check for options */
	if (argc > 1 && argv[1][0] == '-') {
		(void) FUNC0(stderr, FUNC1("invalid option '%c'\n"),
		    argv[1][1]);
		FUNC7(B_FALSE);
	}

	/* check number of arguments */
	if (argc < 2) {
		(void) FUNC0(stderr, "%s", FUNC1("missing arguments\n"));
		FUNC7(B_FALSE);
	}
	if (argc < 3) {
		if (FUNC6(argv[1], '=') == NULL) {
			(void) FUNC0(stderr, "%s", FUNC1("missing property=value "
			    "argument(s)\n"));
		} else {
			(void) FUNC0(stderr, "%s", FUNC1("missing dataset "
			    "name(s)\n"));
		}
		FUNC7(B_FALSE);
	}

	/* validate argument order:  prop=val args followed by dataset args */
	for (int i = 1; i < argc; i++) {
		if (FUNC6(argv[i], '=') != NULL) {
			if (ds_start > 0) {
				/* out-of-order prop=val argument */
				(void) FUNC0(stderr, FUNC1("invalid "
				    "argument order\n"), i);
				FUNC7(B_FALSE);
			}
		} else if (ds_start < 0) {
			ds_start = i;
		}
	}
	if (ds_start < 0) {
		(void) FUNC0(stderr, "%s", FUNC1("missing dataset name(s)\n"));
		FUNC7(B_FALSE);
	}

	/* Populate a list of property settings */
	if (FUNC3(&props, NV_UNIQUE_NAME, 0) != 0)
		FUNC2();
	for (int i = 1; i < ds_start; i++) {
		if ((ret = FUNC5(props, argv[i])) != 0)
			goto error;
	}

	ret = FUNC8(argc - ds_start, argv + ds_start, 0,
	    ZFS_TYPE_DATASET, NULL, NULL, 0, set_callback, props);

error:
	FUNC4(props);
	return (ret);
}