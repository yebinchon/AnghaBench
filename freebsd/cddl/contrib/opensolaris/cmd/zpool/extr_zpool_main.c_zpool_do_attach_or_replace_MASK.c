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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ZPOOL_COPY_BOOT_LABEL ; 
 int /*<<< orphan*/  ZPOOL_NO_BOOT_LABEL ; 
 int /*<<< orphan*/  ZPOOL_PROP_BOOTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC12(int argc, char **argv, int replacing)
{
	boolean_t force = B_FALSE;
	int c;
	nvlist_t *nvroot;
	char *poolname, *old_disk, *new_disk;
	zpool_handle_t *zhp;
	zpool_boot_label_t boot_type;
	uint64_t boot_size;
	int ret;

	/* check options */
	while ((c = FUNC1(argc, argv, "f")) != -1) {
		switch (c) {
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

	/* get pool name and check number of arguments */
	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing pool name argument\n"));
		FUNC5(B_FALSE);
	}

	poolname = argv[0];

	if (argc < 2) {
		(void) FUNC0(stderr,
		    "%s", FUNC2("missing <device> specification\n"));
		FUNC5(B_FALSE);
	}

	old_disk = argv[1];

	if (argc < 3) {
		if (!replacing) {
			(void) FUNC0(stderr,
			    "%s", FUNC2("missing <new_device> specification\n"));
			FUNC5(B_FALSE);
		}
		new_disk = old_disk;
		argc -= 1;
		argv += 1;
	} else {
		new_disk = argv[2];
		argc -= 2;
		argv += 2;
	}

	if (argc > 1) {
		(void) FUNC0(stderr, "%s", FUNC2("too many arguments\n"));
		FUNC5(B_FALSE);
	}

	if ((zhp = FUNC10(g_zfs, poolname)) == NULL)
		return (1);

	if (FUNC7(zhp, NULL) == NULL) {
		(void) FUNC0(stderr, FUNC2("pool '%s' is unavailable\n"),
		    poolname);
		FUNC6(zhp);
		return (1);
	}

	if (FUNC9(zhp))
		boot_type = ZPOOL_COPY_BOOT_LABEL;
	else
		boot_type = ZPOOL_NO_BOOT_LABEL;

	boot_size = FUNC8(zhp, ZPOOL_PROP_BOOTSIZE, NULL);
	nvroot = FUNC3(zhp, force, B_FALSE, replacing, B_FALSE,
	    boot_type, boot_size, argc, argv);
	if (nvroot == NULL) {
		FUNC6(zhp);
		return (1);
	}

	ret = FUNC11(zhp, old_disk, new_disk, nvroot, replacing);

	FUNC4(nvroot);
	FUNC6(zhp);

	return (ret);
}