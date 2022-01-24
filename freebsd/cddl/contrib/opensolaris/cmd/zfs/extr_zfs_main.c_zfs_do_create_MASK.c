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
typedef  scalar_t__ zfs_type_t ;
typedef  int /*<<< orphan*/  zfs_prop_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 scalar_t__ SPA_VERSION_REFRESERVATION ; 
 int /*<<< orphan*/  ZFS_PROP_REFRESERVATION ; 
 int /*<<< orphan*/  ZFS_PROP_RESERVATION ; 
 int /*<<< orphan*/  ZFS_PROP_VOLBLOCKSIZE ; 
 int /*<<< orphan*/  ZFS_PROP_VOLSIZE ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 scalar_t__ ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  ZPOOL_PROP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC12 (char*,char) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 char* FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC29 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC30(int argc, char **argv)
{
	zfs_type_t type = ZFS_TYPE_FILESYSTEM;
	zfs_handle_t *zhp = NULL;
	uint64_t volsize = 0;
	int c;
	boolean_t noreserve = B_FALSE;
	boolean_t bflag = B_FALSE;
	boolean_t parents = B_FALSE;
	boolean_t nomount = B_FALSE;
	int ret = 1;
	nvlist_t *props;
	uint64_t intval;

	if (FUNC6(&props, NV_UNIQUE_NAME, 0) != 0)
		FUNC4();

	/* check options */
	while ((c = FUNC1(argc, argv, ":V:b:so:pu")) != -1) {
		switch (c) {
		case 'V':
			type = ZFS_TYPE_VOLUME;
			if (FUNC20(g_zfs, optarg, &intval) != 0) {
				(void) FUNC0(stderr, FUNC2("bad volume "
				    "size '%s': %s\n"), optarg,
				    FUNC3(g_zfs));
				goto error;
			}

			if (FUNC5(props,
			    FUNC22(ZFS_PROP_VOLSIZE), intval) != 0)
				FUNC4();
			volsize = intval;
			break;
		case 'p':
			parents = B_TRUE;
			break;
		case 'b':
			bflag = B_TRUE;
			if (FUNC20(g_zfs, optarg, &intval) != 0) {
				(void) FUNC0(stderr, FUNC2("bad volume "
				    "block size '%s': %s\n"), optarg,
				    FUNC3(g_zfs));
				goto error;
			}

			if (FUNC5(props,
			    FUNC22(ZFS_PROP_VOLBLOCKSIZE),
			    intval) != 0)
				FUNC4();
			break;
		case 'o':
			if (FUNC9(props, optarg) != 0)
				goto error;
			break;
		case 's':
			noreserve = B_TRUE;
			break;
		case 'u':
			nomount = B_TRUE;
			break;
		case ':':
			(void) FUNC0(stderr, "%s", FUNC2("missing size "
			    "argument\n"));
			goto badusage;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			goto badusage;
		}
	}

	if ((bflag || noreserve) && type != ZFS_TYPE_VOLUME) {
		(void) FUNC0(stderr, "%s", FUNC2("'-s' and '-b' can only be "
		    "used when creating a volume\n"));
		goto badusage;
	}
	if (nomount && type != ZFS_TYPE_FILESYSTEM) {
		(void) FUNC0(stderr, "%s", FUNC2("'-u' can only be "
		    "used when creating a file system\n"));
		goto badusage;
	}

	argc -= optind;
	argv += optind;

	/* check number of arguments */
	if (argc == 0) {
		(void) FUNC0(stderr, FUNC2("missing %s argument\n"),
		    FUNC24(type));
		goto badusage;
	}
	if (argc > 1) {
		(void) FUNC0(stderr, "%s", FUNC2("too many arguments\n"));
		goto badusage;
	}

	if (type == ZFS_TYPE_VOLUME && !noreserve) {
		zpool_handle_t *zpool_handle;
		nvlist_t *real_props = NULL;
		uint64_t spa_version;
		char *p;
		zfs_prop_t resv_prop;
		char *strval;
		char msg[1024];

		if ((p = FUNC12(argv[0], '/')) != NULL)
			*p = '\0';
		zpool_handle = FUNC28(g_zfs, argv[0]);
		if (p != NULL)
			*p = '/';
		if (zpool_handle == NULL)
			goto error;
		spa_version = FUNC27(zpool_handle,
		    ZPOOL_PROP_VERSION, NULL);
		if (spa_version >= SPA_VERSION_REFRESERVATION)
			resv_prop = ZFS_PROP_REFRESERVATION;
		else
			resv_prop = ZFS_PROP_RESERVATION;

		(void) FUNC11(msg, sizeof (msg),
		    FUNC2("cannot create '%s'"), argv[0]);
		if (props && (real_props = FUNC25(g_zfs, type,
		    props, 0, NULL, zpool_handle, msg)) == NULL) {
			FUNC26(zpool_handle);
			goto error;
		}
		FUNC26(zpool_handle);

		volsize = FUNC29(volsize, real_props);
		FUNC7(real_props);

		if (FUNC8(props, FUNC22(resv_prop),
		    &strval) != 0) {
			if (FUNC5(props,
			    FUNC22(resv_prop), volsize) != 0) {
				FUNC7(props);
				FUNC4();
			}
		}
	}

	if (parents && FUNC19(argv[0], type)) {
		/*
		 * Now create the ancestors of target dataset.  If the target
		 * already exists and '-p' option was used we should not
		 * complain.
		 */
		if (FUNC17(g_zfs, argv[0], type)) {
			ret = 0;
			goto error;
		}
		if (FUNC16(g_zfs, argv[0]) != 0)
			goto error;
	}

	/* pass to libzfs */
	if (FUNC15(g_zfs, argv[0], type, props) != 0)
		goto error;

	if ((zhp = FUNC21(g_zfs, argv[0], ZFS_TYPE_DATASET)) == NULL)
		goto error;

	ret = 0;

	/*
	 * Mount and/or share the new filesystem as appropriate.  We provide a
	 * verbose error message to let the user know that their filesystem was
	 * in fact created, even if we failed to mount or share it.
	 * If the user doesn't want the dataset automatically mounted,
	 * then skip the mount/share step altogether.
	 */
	if (!nomount && FUNC10(zhp)) {
		if (FUNC18(zhp, NULL, 0) != 0) {
			(void) FUNC0(stderr, "%s", FUNC2("filesystem "
			    "successfully created, but not mounted\n"));
			ret = 1;
		} else if (FUNC23(zhp) != 0) {
			(void) FUNC0(stderr, "%s", FUNC2("filesystem "
			    "successfully created, but not shared\n"));
			ret = 1;
		}
	}

error:
	if (zhp)
		FUNC14(zhp);
	FUNC7(props);
	return (ret);
badusage:
	FUNC7(props);
	FUNC13(B_FALSE);
	return (2);
}