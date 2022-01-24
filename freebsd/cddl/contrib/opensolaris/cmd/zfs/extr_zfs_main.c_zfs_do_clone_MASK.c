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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 int ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(int argc, char **argv)
{
	zfs_handle_t *zhp = NULL;
	boolean_t parents = B_FALSE;
	nvlist_t *props;
	int ret = 0;
	int c;

	if (FUNC4(&props, NV_UNIQUE_NAME, 0) != 0)
		FUNC3();

	/* check options */
	while ((c = FUNC1(argc, argv, "o:p")) != -1) {
		switch (c) {
		case 'o':
			if (FUNC6(props, optarg) != 0)
				return (1);
			break;
		case 'p':
			parents = B_TRUE;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			goto usage;
		}
	}

	argc -= optind;
	argv += optind;

	/* check number of arguments */
	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing source dataset "
		    "argument\n"));
		goto usage;
	}
	if (argc < 2) {
		(void) FUNC0(stderr, "%s", FUNC2("missing target dataset "
		    "argument\n"));
		goto usage;
	}
	if (argc > 2) {
		(void) FUNC0(stderr, "%s", FUNC2("too many arguments\n"));
		goto usage;
	}

	/* open the source dataset */
	if ((zhp = FUNC15(g_zfs, argv[0], ZFS_TYPE_SNAPSHOT)) == NULL)
		return (1);

	if (parents && FUNC14(argv[1], ZFS_TYPE_FILESYSTEM |
	    ZFS_TYPE_VOLUME)) {
		/*
		 * Now create the ancestors of the target dataset.  If the
		 * target already exists and '-p' option was used we should not
		 * complain.
		 */
		if (FUNC12(g_zfs, argv[1], ZFS_TYPE_FILESYSTEM |
		    ZFS_TYPE_VOLUME))
			return (0);
		if (FUNC11(g_zfs, argv[1]) != 0)
			return (1);
	}

	/* pass to libzfs */
	ret = FUNC9(zhp, argv[1], props);

	/* create the mountpoint if necessary */
	if (ret == 0) {
		zfs_handle_t *clone;

		clone = FUNC15(g_zfs, argv[1], ZFS_TYPE_DATASET);
		if (clone != NULL) {
			/*
			 * If the user doesn't want the dataset
			 * automatically mounted, then skip the mount/share
			 * step.
			 */
			if (FUNC7(clone)) {
				if ((ret = FUNC13(clone, NULL, 0)) != 0) {
					(void) FUNC0(stderr, "%s", FUNC2("clone "
					    "successfully created, "
					    "but not mounted\n"));
				} else if ((ret = FUNC16(clone)) != 0) {
					(void) FUNC0(stderr, "%s", FUNC2("clone "
					    "successfully created, "
					    "but not shared\n"));
				}
			}
			FUNC10(clone);
		}
	}

	FUNC10(zhp);
	FUNC5(props);

	return (!!ret);

usage:
	if (zhp)
		FUNC10(zhp);
	FUNC5(props);
	FUNC8(B_FALSE);
	return (-1);
}