#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* vp_nvlist; } ;
struct TYPE_6__ {TYPE_1__ vl_vdev_phys; } ;
typedef  TYPE_2__ vdev_label_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct stat64 {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  label ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_MINBLOCKSHIFT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int VDEV_LABELS ; 
 int /*<<< orphan*/  ZFS_DISK_ROOTD ; 
 char* ZFS_RDISK_ROOTD ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ASHIFT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__* dump_opt ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ FUNC7 (int,struct stat64*) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*,size_t,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*,char const*) ; 
 scalar_t__ FUNC17 (char*,struct stat64*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC18 (char const*,char) ; 
 char* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,char const*,int) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (char const*,int /*<<< orphan*/ ,int) ; 
 char* FUNC24 (char const*,char) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC26(const char *dev)
{
	int fd;
	vdev_label_t label;
	char path[MAXPATHLEN];
	char *buf = label.vl_vdev_phys.vp_nvlist;
	size_t buflen = sizeof (label.vl_vdev_phys.vp_nvlist);
	struct stat64 statbuf;
	uint64_t psize, ashift;
	boolean_t label_found = B_FALSE;

	(void) FUNC21(path, dev, sizeof (path));
	if (dev[0] == '/') {
		if (FUNC23(dev, ZFS_DISK_ROOTD,
		    FUNC22(ZFS_DISK_ROOTD)) == 0) {
			(void) FUNC16(path, sizeof (path), "%s%s",
			    ZFS_RDISK_ROOTD, dev + FUNC22(ZFS_DISK_ROOTD));
		}
	} else if (FUNC17(path, &statbuf) != 0) {
		char *s;

		(void) FUNC16(path, sizeof (path), "%s%s", ZFS_RDISK_ROOTD,
		    dev);
		if (((s = FUNC24(dev, 's')) == NULL &&
		    (s = FUNC18(dev, 'p')) == NULL) ||
		    !FUNC8(*(s + 1)))
			(void) FUNC20(path, "s0", sizeof (path));
	}

	if ((fd = FUNC13(path, O_RDONLY)) < 0) {
		(void) FUNC6(stderr, "cannot open '%s': %s\n", path,
		    FUNC19(errno));
		FUNC5(1);
	}

	if (FUNC7(fd, &statbuf) != 0) {
		(void) FUNC6(stderr, "failed to stat '%s': %s\n", path,
		    FUNC19(errno));
		(void) FUNC2(fd);
		FUNC5(1);
	}

	if (FUNC1(statbuf.st_mode)) {
		(void) FUNC6(stderr,
		    "cannot use '%s': character device required\n", path);
		(void) FUNC2(fd);
		FUNC5(1);
	}

	psize = statbuf.st_size;
	psize = FUNC0(psize, (uint64_t)sizeof (vdev_label_t));

	for (int l = 0; l < VDEV_LABELS; l++) {
		nvlist_t *config = NULL;

		if (!dump_opt['q']) {
			(void) FUNC15("------------------------------------\n");
			(void) FUNC15("LABEL %d\n", l);
			(void) FUNC15("------------------------------------\n");
		}

		if (FUNC14(fd, &label, sizeof (label),
		    FUNC25(psize, l, 0)) != sizeof (label)) {
			if (!dump_opt['q'])
				(void) FUNC15("failed to read label %d\n", l);
			continue;
		}

		if (FUNC12(buf, buflen, &config, 0) != 0) {
			if (!dump_opt['q'])
				(void) FUNC15("failed to unpack label %d\n", l);
			ashift = SPA_MINBLOCKSHIFT;
		} else {
			nvlist_t *vdev_tree = NULL;

			if (!dump_opt['q'])
				FUNC4(config, 4);
			if ((FUNC10(config,
			    ZPOOL_CONFIG_VDEV_TREE, &vdev_tree) != 0) ||
			    (FUNC11(vdev_tree,
			    ZPOOL_CONFIG_ASHIFT, &ashift) != 0))
				ashift = SPA_MINBLOCKSHIFT;
			FUNC9(config);
			label_found = B_TRUE;
		}
		if (dump_opt['u'])
			FUNC3(&label, ashift);
	}

	(void) FUNC2(fd);

	return (label_found ? 0 : 2);
}