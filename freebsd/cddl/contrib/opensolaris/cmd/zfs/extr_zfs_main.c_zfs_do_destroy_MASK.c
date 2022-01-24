#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int zfs_type_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_8__ {void* cb_defer_destroy; char* cb_snapspec; char* cb_snapused; void* cb_nvl; void* cb_batchedsnaps; scalar_t__ cb_error; void* cb_doclones; void* cb_first; void* cb_recurse; int /*<<< orphan*/ * cb_target; void* cb_dryrun; void* cb_parsable; void* cb_verbose; void* cb_force; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ destroy_cbdata_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int ZFS_TYPE_DATASET ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_SNAPSHOT ; 
 int ZFS_TYPE_VOLUME ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC8 (int,char**,char*) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC14 (char*,char) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,void*,void*) ; 
 char* FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,void*,int (*) (int /*<<< orphan*/ *,TYPE_1__*),TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int
FUNC26(int argc, char **argv)
{
	destroy_cbdata_t cb = { 0 };
	int rv = 0;
	int err = 0;
	int c;
	zfs_handle_t *zhp = NULL;
	char *at, *pound;
	zfs_type_t type = ZFS_TYPE_DATASET;

	/* check options */
	while ((c = FUNC8(argc, argv, "vpndfrR")) != -1) {
		switch (c) {
		case 'v':
			cb.cb_verbose = B_TRUE;
			break;
		case 'p':
			cb.cb_verbose = B_TRUE;
			cb.cb_parsable = B_TRUE;
			break;
		case 'n':
			cb.cb_dryrun = B_TRUE;
			break;
		case 'd':
			cb.cb_defer_destroy = B_TRUE;
			type = ZFS_TYPE_SNAPSHOT;
			break;
		case 'f':
			cb.cb_force = B_TRUE;
			break;
		case 'r':
			cb.cb_recurse = B_TRUE;
			break;
		case 'R':
			cb.cb_recurse = B_TRUE;
			cb.cb_doclones = B_TRUE;
			break;
		case '?':
		default:
			(void) FUNC6(stderr, FUNC9("invalid option '%c'\n"),
			    optopt);
			FUNC15(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* check number of arguments */
	if (argc == 0) {
		(void) FUNC6(stderr, "%s", FUNC9("missing dataset argument\n"));
		FUNC15(B_FALSE);
	}
	if (argc > 1) {
		(void) FUNC6(stderr, "%s", FUNC9("too many arguments\n"));
		FUNC15(B_FALSE);
	}

	at = FUNC14(argv[0], '@');
	pound = FUNC14(argv[0], '#');
	if (at != NULL) {

		/* Build the list of snaps to destroy in cb_nvl. */
		cb.cb_nvl = FUNC4();

		*at = '\0';
		zhp = FUNC24(g_zfs, argv[0],
		    ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
		if (zhp == NULL)
			return (1);

		cb.cb_snapspec = at + 1;
		if (FUNC7(FUNC21(zhp), &cb) != 0 ||
		    cb.cb_error) {
			rv = 1;
			goto out;
		}

		if (FUNC11(cb.cb_nvl)) {
			(void) FUNC6(stderr, "%s", FUNC9("could not find any "
			    "snapshots to destroy; check snapshot names.\n"));
			rv = 1;
			goto out;
		}

		if (cb.cb_verbose) {
			char buf[16];
			FUNC23(cb.cb_snapused, buf, sizeof (buf));
			if (cb.cb_parsable) {
				(void) FUNC13("reclaim\t%llu\n",
				    cb.cb_snapused);
			} else if (cb.cb_dryrun) {
				(void) FUNC13(FUNC9("would reclaim %s\n"),
				    buf);
			} else {
				(void) FUNC13(FUNC9("will reclaim %s\n"),
				    buf);
			}
		}

		if (!cb.cb_dryrun) {
			if (cb.cb_doclones) {
				cb.cb_batchedsnaps = FUNC4();
				err = FUNC2(&cb);
				if (err == 0) {
					err = FUNC18(g_zfs,
					    cb.cb_batchedsnaps, B_FALSE);
				}
				if (err != 0) {
					rv = 1;
					goto out;
				}
			}
			if (err == 0) {
				err = FUNC18(g_zfs, cb.cb_nvl,
				    cb.cb_defer_destroy);
			}
		}

		if (err != 0)
			rv = 1;
	} else if (pound != NULL) {
		int err;
		nvlist_t *nvl;

		if (cb.cb_dryrun) {
			(void) FUNC6(stderr,
			    "dryrun is not supported with bookmark\n");
			return (-1);
		}

		if (cb.cb_defer_destroy) {
			(void) FUNC6(stderr,
			    "defer destroy is not supported with bookmark\n");
			return (-1);
		}

		if (cb.cb_recurse) {
			(void) FUNC6(stderr,
			    "recursive is not supported with bookmark\n");
			return (-1);
		}

		if (!FUNC16(argv[0])) {
			(void) FUNC6(stderr, FUNC9("bookmark '%s' "
			    "does not exist.\n"), argv[0]);
			return (1);
		}

		nvl = FUNC4();
		FUNC3(nvl, argv[0]);

		err = FUNC10(nvl, NULL);
		if (err != 0) {
			(void) FUNC25(g_zfs, err,
			    "cannot destroy bookmark");
		}

		FUNC12(cb.cb_nvl);

		return (err);
	} else {
		/* Open the given dataset */
		if ((zhp = FUNC24(g_zfs, argv[0], type)) == NULL)
			return (1);

		cb.cb_target = zhp;

		/*
		 * Perform an explicit check for pools before going any further.
		 */
		if (!cb.cb_recurse && FUNC14(FUNC19(zhp), '/') == NULL &&
		    FUNC20(zhp) == ZFS_TYPE_FILESYSTEM) {
			(void) FUNC6(stderr, FUNC9("cannot destroy '%s': "
			    "operation does not apply to pools\n"),
			    FUNC19(zhp));
			(void) FUNC6(stderr, FUNC9("use 'zfs destroy -r "
			    "%s' to destroy all datasets in the pool\n"),
			    FUNC19(zhp));
			(void) FUNC6(stderr, FUNC9("use 'zpool destroy %s' "
			    "to destroy the pool itself\n"), FUNC19(zhp));
			rv = 1;
			goto out;
		}

		/*
		 * Check for any dependents and/or clones.
		 */
		cb.cb_first = B_TRUE;
		if (!cb.cb_doclones &&
		    FUNC22(zhp, B_TRUE, destroy_check_dependent,
		    &cb) != 0) {
			rv = 1;
			goto out;
		}

		if (cb.cb_error) {
			rv = 1;
			goto out;
		}

		cb.cb_batchedsnaps = FUNC4();
		if (FUNC22(zhp, B_FALSE, destroy_callback,
		    &cb) != 0) {
			rv = 1;
			goto out;
		}

		/*
		 * Do the real thing.  The callback will close the
		 * handle regardless of whether it succeeds or not.
		 */
		err = FUNC0(zhp, &cb);
		zhp = NULL;
		if (err == 0) {
			err = FUNC18(g_zfs,
			    cb.cb_batchedsnaps, cb.cb_defer_destroy);
		}
		if (err != 0)
			rv = 1;
	}

out:
	FUNC5(cb.cb_batchedsnaps);
	FUNC5(cb.cb_nvl);
	if (zhp != NULL)
		FUNC17(zhp);
	return (rv);
}