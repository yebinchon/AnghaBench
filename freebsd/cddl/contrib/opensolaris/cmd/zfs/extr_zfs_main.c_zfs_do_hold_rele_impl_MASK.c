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
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char const*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,char const*,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char const*,char const*,scalar_t__) ; 

__attribute__((used)) static int
FUNC10(int argc, char **argv, boolean_t holding)
{
	int errors = 0;
	int i;
	const char *tag;
	boolean_t recursive = B_FALSE;
	const char *opts = holding ? "rt" : "r";
	int c;

	/* check options */
	while ((c = FUNC1(argc, argv, opts)) != -1) {
		switch (c) {
		case 'r':
			recursive = B_TRUE;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC5(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* check number of arguments */
	if (argc < 2)
		FUNC5(B_FALSE);

	tag = argv[0];
	--argc;
	++argv;

	if (holding && tag[0] == '.') {
		/* tags starting with '.' are reserved for libzfs */
		(void) FUNC0(stderr, "%s", FUNC2("tag may not start with '.'\n"));
		FUNC5(B_FALSE);
	}

	for (i = 0; i < argc; ++i) {
		zfs_handle_t *zhp;
		char parent[ZFS_MAX_DATASET_NAME_LEN];
		const char *delim;
		char *path = argv[i];

		delim = FUNC3(path, '@');
		if (delim == NULL) {
			(void) FUNC0(stderr,
			    FUNC2("'%s' is not a snapshot\n"), path);
			++errors;
			continue;
		}
		(void) FUNC4(parent, path, delim - path);
		parent[delim - path] = '\0';

		zhp = FUNC8(g_zfs, parent,
		    ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
		if (zhp == NULL) {
			++errors;
			continue;
		}
		if (holding) {
			if (FUNC7(zhp, delim+1, tag, recursive, -1) != 0)
				++errors;
		} else {
			if (FUNC9(zhp, delim+1, tag, recursive) != 0)
				++errors;
		}
		FUNC6(zhp);
	}

	return (errors != 0);
}