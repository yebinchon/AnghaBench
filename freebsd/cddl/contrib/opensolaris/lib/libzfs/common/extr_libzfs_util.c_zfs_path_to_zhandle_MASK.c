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
typedef  int /*<<< orphan*/  zfs_type_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct statfs {int dummy; } ;
struct stat64 {scalar_t__ st_dev; } ;
struct extmnttab {char* mnt_special; int /*<<< orphan*/  mnt_fstype; int /*<<< orphan*/  mnt_minor; int /*<<< orphan*/  mnt_major; } ;
struct TYPE_4__ {int /*<<< orphan*/  libzfs_mnttab; } ;
typedef  TYPE_1__ libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MNTTYPE_ZFS ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct extmnttab*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,struct stat64*) ; 
 int FUNC6 (char*,struct statfs*) ; 
 int /*<<< orphan*/  FUNC7 (struct statfs*,struct extmnttab*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

zfs_handle_t *
FUNC13(libzfs_handle_t *hdl, char *path, zfs_type_t argtype)
{
	struct stat64 statbuf;
	struct extmnttab entry;
	int ret;

	if (path[0] != '/' && FUNC11(path, "./", FUNC10("./")) != 0) {
		/*
		 * It's not a valid path, assume it's a name of type 'argtype'.
		 */
		return (FUNC12(hdl, path, argtype));
	}

	if (FUNC5(path, &statbuf) != 0) {
		(void) FUNC0(stderr, "%s: %s\n", path, FUNC9(errno));
		return (NULL);
	}

#ifdef illumos
	rewind(hdl->libzfs_mnttab);
	while ((ret = getextmntent(hdl->libzfs_mnttab, &entry, 0)) == 0) {
		if (makedevice(entry.mnt_major, entry.mnt_minor) ==
		    statbuf.st_dev) {
			break;
		}
	}
#else
	{
		struct statfs sfs;

		ret = FUNC6(path, &sfs);
		if (ret == 0)
			FUNC7(&sfs, &entry);
		else {
			(void) FUNC0(stderr, "%s: %s\n", path,
			    FUNC9(errno));
		}
	}
#endif	/* illumos */
	if (ret != 0) {
		return (NULL);
	}

	if (FUNC8(entry.mnt_fstype, MNTTYPE_ZFS) != 0) {
		(void) FUNC0(stderr, FUNC2("'%s': not a ZFS filesystem\n"),
		    path);
		return (NULL);
	}

	return (FUNC12(hdl, entry.mnt_special, ZFS_TYPE_FILESYSTEM));
}