#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cb_version; scalar_t__ cb_numfailed; void* cb_foundone; void* cb_newer; scalar_t__ cb_numsamegraded; int /*<<< orphan*/  cb_numupgraded; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ upgrade_cbdata_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int ZFS_ITER_ARGS_CAN_BE_PATHS ; 
 int ZFS_ITER_RECURSE ; 
 int /*<<< orphan*/  ZFS_PROP_VERSION ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int ZPL_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  upgrade_list_callback ; 
 int /*<<< orphan*/  upgrade_set_callback ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (int,char**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int
FUNC7(int argc, char **argv)
{
	boolean_t all = B_FALSE;
	boolean_t showversions = B_FALSE;
	int ret = 0;
	upgrade_cbdata_t cb = { 0 };
	int c;
	int flags = ZFS_ITER_ARGS_CAN_BE_PATHS;

	/* check options */
	while ((c = FUNC1(argc, argv, "rvV:a")) != -1) {
		switch (c) {
		case 'r':
			flags |= ZFS_ITER_RECURSE;
			break;
		case 'v':
			showversions = B_TRUE;
			break;
		case 'V':
			if (FUNC6(ZFS_PROP_VERSION,
			    optarg, &cb.cb_version) != 0) {
				(void) FUNC0(stderr,
				    FUNC2("invalid version %s\n"), optarg);
				FUNC4(B_FALSE);
			}
			break;
		case 'a':
			all = B_TRUE;
			break;
		case '?':
		default:
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC4(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	if ((!all && !argc) && ((flags & ZFS_ITER_RECURSE) | cb.cb_version))
		FUNC4(B_FALSE);
	if (showversions && (flags & ZFS_ITER_RECURSE || all ||
	    cb.cb_version || argc))
		FUNC4(B_FALSE);
	if ((all || argc) && (showversions))
		FUNC4(B_FALSE);
	if (all && argc)
		FUNC4(B_FALSE);

	if (showversions) {
		/* Show info on available versions. */
		(void) FUNC3(FUNC2("The following filesystem versions are "
		    "supported:\n\n"));
		(void) FUNC3(FUNC2("VER  DESCRIPTION\n"));
		(void) FUNC3("---  -----------------------------------------"
		    "---------------\n");
		(void) FUNC3(FUNC2(" 1   Initial ZFS filesystem version\n"));
		(void) FUNC3(FUNC2(" 2   Enhanced directory entries\n"));
		(void) FUNC3(FUNC2(" 3   Case insensitive and filesystem "
		    "user identifier (FUID)\n"));
		(void) FUNC3(FUNC2(" 4   userquota, groupquota "
		    "properties\n"));
		(void) FUNC3(FUNC2(" 5   System attributes\n"));
		(void) FUNC3(FUNC2("\nFor more information on a particular "
		    "version, including supported releases,\n"));
		(void) FUNC3("see the ZFS Administration Guide.\n\n");
		ret = 0;
	} else if (argc || all) {
		/* Upgrade filesystems */
		if (cb.cb_version == 0)
			cb.cb_version = ZPL_VERSION;
		ret = FUNC5(argc, argv, flags, ZFS_TYPE_FILESYSTEM,
		    NULL, NULL, 0, upgrade_set_callback, &cb);
		(void) FUNC3(FUNC2("%llu filesystems upgraded\n"),
		    cb.cb_numupgraded);
		if (cb.cb_numsamegraded) {
			(void) FUNC3(FUNC2("%llu filesystems already at "
			    "this version\n"),
			    cb.cb_numsamegraded);
		}
		if (cb.cb_numfailed != 0)
			ret = 1;
	} else {
		/* List old-version filesystems */
		boolean_t found;
		(void) FUNC3(FUNC2("This system is currently running "
		    "ZFS filesystem version %llu.\n\n"), ZPL_VERSION);

		flags |= ZFS_ITER_RECURSE;
		ret = FUNC5(0, NULL, flags, ZFS_TYPE_FILESYSTEM,
		    NULL, NULL, 0, upgrade_list_callback, &cb);

		found = cb.cb_foundone;
		cb.cb_foundone = B_FALSE;
		cb.cb_newer = B_TRUE;

		ret = FUNC5(0, NULL, flags, ZFS_TYPE_FILESYSTEM,
		    NULL, NULL, 0, upgrade_list_callback, &cb);

		if (!cb.cb_foundone && !found) {
			(void) FUNC3(FUNC2("All filesystems are "
			    "formatted with the current version.\n"));
		}
	}

	return (ret);
}