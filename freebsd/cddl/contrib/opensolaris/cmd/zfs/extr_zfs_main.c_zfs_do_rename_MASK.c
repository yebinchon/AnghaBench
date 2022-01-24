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
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_3__ {void* recurse; void* nounmount; void* forceunmount; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ renameflags_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int ZFS_TYPE_BOOKMARK ; 
 int ZFS_TYPE_DATASET ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC2 (int,char**,char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*,char*,TYPE_1__) ; 

__attribute__((used)) static int
FUNC12(int argc, char **argv)
{
	zfs_handle_t *zhp;
	renameflags_t flags = { 0 };
	int c;
	int ret = 0;
	int types;
	boolean_t parents = B_FALSE;
	boolean_t bookmarks = B_FALSE;
	char *snapshot = NULL;

	/* check options */
	while ((c = FUNC2(argc, argv, "fpru")) != -1) {
		switch (c) {
		case 'p':
			parents = B_TRUE;
			break;
		case 'r':
			flags.recurse = B_TRUE;
			break;
		case 'u':
			flags.nounmount = B_TRUE;
			break;
		case 'f':
			flags.forceunmount = B_TRUE;
			break;
		case '?':
		default:
			(void) FUNC1(stderr, FUNC3("invalid option '%c'\n"),
			    optopt);
			FUNC5(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* check number of arguments */
	if (argc < 1) {
		(void) FUNC1(stderr, "%s", FUNC3("missing source dataset "
		    "argument\n"));
		FUNC5(B_FALSE);
	}
	if (argc < 2) {
		(void) FUNC1(stderr, "%s", FUNC3("missing target dataset "
		    "argument\n"));
		FUNC5(B_FALSE);
	}
	if (argc > 2) {
		(void) FUNC1(stderr, "%s", FUNC3("too many arguments\n"));
		FUNC5(B_FALSE);
	}

	if (flags.recurse && parents) {
		(void) FUNC1(stderr, "%s", FUNC3("-p and -r options are mutually "
		    "exclusive\n"));
		FUNC5(B_FALSE);
	}

	if (flags.recurse && FUNC4(argv[0], '@') == NULL) {
		(void) FUNC1(stderr, "%s", FUNC3("source dataset for recursive "
		    "rename must be a snapshot\n"));
		FUNC5(B_FALSE);
	}

	if (flags.nounmount && parents) {
		(void) FUNC1(stderr, "%s", FUNC3("-u and -p options are mutually "
		    "exclusive\n"));
		FUNC5(B_FALSE);
	}

	if (FUNC4(argv[0], '#') != NULL)
		bookmarks = B_TRUE;

	if (bookmarks && (flags.nounmount || flags.recurse ||
	    flags.forceunmount || parents)) {
		(void) FUNC1(stderr, "%s", FUNC3("options are not supported "
		    "for renaming bookmarks\n"));
		FUNC5(B_FALSE);
	}

	if (flags.nounmount)
		types = ZFS_TYPE_FILESYSTEM;
	else if (parents)
		types = ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME;
	else if (bookmarks)
		types = ZFS_TYPE_BOOKMARK;
	else
		types = ZFS_TYPE_DATASET;

	if (flags.recurse) {
		/*
		 * When we do recursive rename we are fine when the given
		 * snapshot for the given dataset doesn't exist - it can
		 * still exists below.
		 */

		snapshot = FUNC4(argv[0], '@');
		FUNC0(snapshot != NULL);
		*snapshot = '\0';
		snapshot++;
	}

	if ((zhp = FUNC10(g_zfs, argv[0], types)) == NULL)
		return (1);

	/* If we were asked and the name looks good, try to create ancestors. */
	if (parents && FUNC9(argv[1], FUNC8(zhp)) &&
	    FUNC7(g_zfs, argv[1]) != 0) {
		FUNC6(zhp);
		return (1);
	}

	ret = (FUNC11(zhp, snapshot, argv[1], flags) != 0);

	FUNC6(zhp);
	return (ret);
}