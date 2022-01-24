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
struct statfs {int dummy; } ;
struct stat64 {scalar_t__ st_ino; int /*<<< orphan*/  st_dev; } ;
struct extmnttab {scalar_t__ mnt_major; scalar_t__ mnt_minor; char* mnt_fstype; char* mnt_mountp; int /*<<< orphan*/  mnt_special; } ;
typedef  int /*<<< orphan*/  smbshare_prop ;
typedef  int /*<<< orphan*/  nfs_mnt_prop ;
typedef  int /*<<< orphan*/  mtpt_prop ;
typedef  scalar_t__ ino_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 char* MNTTYPE_ZFS ; 
 int OP_SHARE ; 
 int ZFS_MAXPROPLEN ; 
 int /*<<< orphan*/  ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  ZFS_PROP_SHARENFS ; 
 int /*<<< orphan*/  ZFS_PROP_SHARESMB ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int /*<<< orphan*/ ,struct extmnttab*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mnttab_file ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,struct stat64*) ; 
 scalar_t__ FUNC7 (char*,struct statfs*) ; 
 int /*<<< orphan*/  FUNC8 (struct statfs*,struct extmnttab*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int) ; 
 int FUNC20 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC21(int op, char *path, int flags, boolean_t is_manual)
{
	zfs_handle_t *zhp;
	int ret = 0;
	struct stat64 statbuf;
	struct extmnttab entry;
	const char *cmdname = (op == OP_SHARE) ? "unshare" : "unmount";
	ino_t path_inode;

	/*
	 * Search for the path in /etc/mnttab.  Rather than looking for the
	 * specific path, which can be fooled by non-standard paths (i.e. ".."
	 * or "//"), we stat() the path and search for the corresponding
	 * (major,minor) device pair.
	 */
	if (FUNC6(path, &statbuf) != 0) {
		(void) FUNC0(stderr, FUNC2("cannot %s '%s': %s\n"),
		    cmdname, path, FUNC10(errno));
		return (1);
	}
	path_inode = statbuf.st_ino;

	/*
	 * Search for the given (major,minor) pair in the mount table.
	 */
#ifdef illumos
	rewind(mnttab_file);
	while ((ret = getextmntent(mnttab_file, &entry, 0)) == 0) {
		if (entry.mnt_major == major(statbuf.st_dev) &&
		    entry.mnt_minor == minor(statbuf.st_dev))
			break;
	}
#else
	{
		struct statfs sfs;

		if (FUNC7(path, &sfs) != 0) {
			(void) FUNC0(stderr, "%s: %s\n", path,
			    FUNC10(errno));
			ret = -1;
		}
		FUNC8(&sfs, &entry);
	}
#endif
	if (ret != 0) {
		if (op == OP_SHARE) {
			(void) FUNC0(stderr, FUNC2("cannot %s '%s': not "
			    "currently mounted\n"), cmdname, path);
			return (1);
		}
		(void) FUNC0(stderr, FUNC2("warning: %s not in mnttab\n"),
		    path);
		if ((ret = FUNC11(path, flags)) != 0)
			(void) FUNC0(stderr, FUNC2("%s: %s\n"), path,
			    FUNC10(errno));
		return (ret != 0);
	}

	if (FUNC9(entry.mnt_fstype, MNTTYPE_ZFS) != 0) {
		(void) FUNC0(stderr, FUNC2("cannot %s '%s': not a ZFS "
		    "filesystem\n"), cmdname, path);
		return (1);
	}

	if ((zhp = FUNC16(g_zfs, entry.mnt_special,
	    ZFS_TYPE_FILESYSTEM)) == NULL)
		return (1);

	ret = 1;
	if (FUNC6(entry.mnt_mountp, &statbuf) != 0) {
		(void) FUNC0(stderr, FUNC2("cannot %s '%s': %s\n"),
		    cmdname, path, FUNC10(errno));
		goto out;
	} else if (statbuf.st_ino != path_inode) {
		(void) FUNC0(stderr, FUNC2("cannot "
		    "%s '%s': not a mountpoint\n"), cmdname, path);
		goto out;
	}

	if (op == OP_SHARE) {
		char nfs_mnt_prop[ZFS_MAXPROPLEN];
		char smbshare_prop[ZFS_MAXPROPLEN];

		FUNC12(FUNC17(zhp, ZFS_PROP_SHARENFS, nfs_mnt_prop,
		    sizeof (nfs_mnt_prop), NULL, NULL, 0, B_FALSE) == 0);
		FUNC12(FUNC17(zhp, ZFS_PROP_SHARESMB, smbshare_prop,
		    sizeof (smbshare_prop), NULL, NULL, 0, B_FALSE) == 0);

		if (FUNC9(nfs_mnt_prop, "off") == 0 &&
		    FUNC9(smbshare_prop, "off") == 0) {
			(void) FUNC0(stderr, FUNC2("cannot unshare "
			    "'%s': legacy share\n"), path);
#ifdef illumos
			(void) fprintf(stderr, gettext("use "
			    "unshare(1M) to unshare this filesystem\n"));
#endif
		} else if (!FUNC15(zhp)) {
			(void) FUNC0(stderr, FUNC2("cannot unshare '%s': "
			    "not currently shared\n"), path);
		} else {
			ret = FUNC20(zhp, path);
		}
	} else {
		char mtpt_prop[ZFS_MAXPROPLEN];

		FUNC12(FUNC17(zhp, ZFS_PROP_MOUNTPOINT, mtpt_prop,
		    sizeof (mtpt_prop), NULL, NULL, 0, B_FALSE) == 0);

		if (is_manual) {
			ret = FUNC18(zhp, NULL, flags);
		} else if (FUNC9(mtpt_prop, "legacy") == 0) {
			(void) FUNC0(stderr, FUNC2("cannot unmount "
			    "'%s': legacy mountpoint\n"),
			    FUNC14(zhp));
			(void) FUNC0(stderr, "%s", FUNC2("use umount(8) "
			    "to unmount this filesystem\n"));
		} else {
			ret = FUNC19(zhp, flags);
		}
	}

out:
	FUNC13(zhp);

	return (ret != 0);
}