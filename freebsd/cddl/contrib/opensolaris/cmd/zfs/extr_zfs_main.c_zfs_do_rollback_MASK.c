#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int cb_recurse; int cb_doclones; char* cb_target; scalar_t__ cb_create; int cb_error; void* cb_first; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ rollback_cbdata_t ;
typedef  int /*<<< orphan*/  parentname ;
typedef  void* boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_CREATETXG ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  rollback_check ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int
FUNC13(int argc, char **argv)
{
	int ret = 0;
	int c;
	boolean_t force = B_FALSE;
	rollback_cbdata_t cb = { 0 };
	zfs_handle_t *zhp, *snap;
	char parentname[ZFS_MAX_DATASET_NAME_LEN];
	char *delim;
	uint64_t min_txg = 0;

	/* check options */
	while ((c = FUNC1(argc, argv, "rRf")) != -1) {
		switch (c) {
		case 'r':
			cb.cb_recurse = 1;
			break;
		case 'R':
			cb.cb_recurse = 1;
			cb.cb_doclones = 1;
			break;
		case 'f':
			force = B_TRUE;
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
	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing dataset argument\n"));
		FUNC5(B_FALSE);
	}
	if (argc > 1) {
		(void) FUNC0(stderr, "%s", FUNC2("too many arguments\n"));
		FUNC5(B_FALSE);
	}

	/* open the snapshot */
	if ((snap = FUNC10(g_zfs, argv[0], ZFS_TYPE_SNAPSHOT)) == NULL)
		return (1);

	/* open the parent dataset */
	(void) FUNC3(parentname, argv[0], sizeof (parentname));
	FUNC6((delim = FUNC4(parentname, '@')) != NULL);
	*delim = '\0';
	if ((zhp = FUNC10(g_zfs, parentname, ZFS_TYPE_DATASET)) == NULL) {
		FUNC7(snap);
		return (1);
	}

	/*
	 * Check for more recent snapshots and/or clones based on the presence
	 * of '-r' and '-R'.
	 */
	cb.cb_target = argv[0];
	cb.cb_create = FUNC11(snap, ZFS_PROP_CREATETXG);
	cb.cb_first = B_TRUE;
	cb.cb_error = 0;

	if (cb.cb_create > 0)
		min_txg = cb.cb_create;

	if ((ret = FUNC9(zhp, B_FALSE, rollback_check, &cb,
	    min_txg, 0)) != 0)
		goto out;
	if ((ret = FUNC8(zhp, rollback_check, &cb)) != 0)
		goto out;

	if ((ret = cb.cb_error) != 0)
		goto out;

	/*
	 * Rollback parent to the given snapshot.
	 */
	ret = FUNC12(zhp, snap, force);

out:
	FUNC7(snap);
	FUNC7(zhp);

	if (ret == 0)
		return (0);
	else
		return (1);
}