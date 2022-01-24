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
typedef  int /*<<< orphan*/  zpool_boot_label_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  ZPOOL_COPY_BOOT_LABEL ; 
 int /*<<< orphan*/  ZPOOL_NO_BOOT_LABEL ; 
 int /*<<< orphan*/  ZPOOL_PROP_BOOTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,char*) ; 

int
FUNC18(int argc, char **argv)
{
	boolean_t force = B_FALSE;
	boolean_t dryrun = B_FALSE;
	int c;
	nvlist_t *nvroot;
	char *poolname;
	zpool_boot_label_t boot_type;
	uint64_t boot_size;
	int ret;
	zpool_handle_t *zhp;
	nvlist_t *config;

	/* check options */
	while ((c = FUNC1(argc, argv, "fn")) != -1) {
		switch (c) {
		case 'f':
			force = B_TRUE;
			break;
		case 'n':
			dryrun = B_TRUE;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC9(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* get pool name and check number of arguments */
	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing pool name argument\n"));
		FUNC9(B_FALSE);
	}
	if (argc < 2) {
		(void) FUNC0(stderr, "%s", FUNC2("missing vdev specification\n"));
		FUNC9(B_FALSE);
	}

	poolname = argv[0];

	argc--;
	argv++;

	if ((zhp = FUNC17(g_zfs, poolname)) == NULL)
		return (1);

	if ((config = FUNC13(zhp, NULL)) == NULL) {
		(void) FUNC0(stderr, FUNC2("pool '%s' is unavailable\n"),
		    poolname);
		FUNC12(zhp);
		return (1);
	}

	if (FUNC16(zhp))
		boot_type = ZPOOL_COPY_BOOT_LABEL;
	else
		boot_type = ZPOOL_NO_BOOT_LABEL;

	/* pass off to get_vdev_spec for processing */
	boot_size = FUNC15(zhp, ZPOOL_PROP_BOOTSIZE, NULL);
	nvroot = FUNC3(zhp, force, !force, B_FALSE, dryrun,
	    boot_type, boot_size, argc, argv);
	if (nvroot == NULL) {
		FUNC12(zhp);
		return (1);
	}

	if (dryrun) {
		nvlist_t *poolnvroot;

		FUNC10(FUNC6(config, ZPOOL_CONFIG_VDEV_TREE,
		    &poolnvroot) == 0);

		(void) FUNC8(FUNC2("would update '%s' to the following "
		    "configuration:\n"), FUNC14(zhp));

		/* print original main pool and new tree */
		FUNC7(zhp, poolname, poolnvroot, 0, B_FALSE);
		FUNC7(zhp, NULL, nvroot, 0, B_FALSE);

		/* Do the same for the logs */
		if (FUNC4(poolnvroot) > 0) {
			FUNC7(zhp, "logs", poolnvroot, 0, B_TRUE);
			FUNC7(zhp, NULL, nvroot, 0, B_TRUE);
		} else if (FUNC4(nvroot) > 0) {
			FUNC7(zhp, "logs", nvroot, 0, B_TRUE);
		}

		ret = 0;
	} else {
		ret = (FUNC11(zhp, nvroot) != 0);
	}

	FUNC5(nvroot);
	FUNC12(zhp);

	return (ret);
}