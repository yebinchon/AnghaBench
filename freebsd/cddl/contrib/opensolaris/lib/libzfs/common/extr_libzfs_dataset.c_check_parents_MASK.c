#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_9__ {char* zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  parent ;
struct TYPE_10__ {int /*<<< orphan*/  libzfs_fd; } ;
typedef  TYPE_2__ libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  EZFS_BADTYPE ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  EZFS_NOENT ; 
 scalar_t__ GLOBAL_ZONEID ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_OBJSET_STATS ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_ZONED ; 
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 
 char* FUNC6 (char*,char) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,...) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_2__*,scalar_t__,char*) ; 

__attribute__((used)) static int
FUNC15(libzfs_handle_t *hdl, const char *path, uint64_t *zoned,
    boolean_t accept_ancestor, int *prefixlen)
{
	zfs_cmd_t zc = { 0 };
	char parent[ZFS_MAX_DATASET_NAME_LEN];
	char *slash;
	zfs_handle_t *zhp;
	char errbuf[1024];
	uint64_t is_zoned;

	(void) FUNC5(errbuf, sizeof (errbuf),
	    FUNC0(TEXT_DOMAIN, "cannot create '%s'"), path);

	/* get parent, and check to see if this is just a pool */
	if (FUNC4(path, parent, sizeof (parent)) != 0) {
		FUNC11(hdl, FUNC0(TEXT_DOMAIN,
		    "missing dataset name"));
		return (FUNC10(hdl, EZFS_INVALIDNAME, errbuf));
	}

	/* check to see if the pool exists */
	if ((slash = FUNC6(parent, '/')) == NULL)
		slash = parent + FUNC7(parent);
	(void) FUNC8(zc.zc_name, parent, slash - parent);
	zc.zc_name[slash - parent] = '\0';
	if (FUNC2(hdl->libzfs_fd, ZFS_IOC_OBJSET_STATS, &zc) != 0 &&
	    errno == ENOENT) {
		FUNC11(hdl, FUNC0(TEXT_DOMAIN,
		    "no such pool '%s'"), zc.zc_name);
		return (FUNC10(hdl, EZFS_NOENT, errbuf));
	}

	/* check to see if the parent dataset exists */
	while ((zhp = FUNC3(hdl, parent)) == NULL) {
		if (errno == ENOENT && accept_ancestor) {
			/*
			 * Go deeper to find an ancestor, give up on top level.
			 */
			if (FUNC4(parent, parent, sizeof (parent)) != 0) {
				FUNC11(hdl, FUNC0(TEXT_DOMAIN,
				    "no such pool '%s'"), zc.zc_name);
				return (FUNC10(hdl, EZFS_NOENT, errbuf));
			}
		} else if (errno == ENOENT) {
			FUNC11(hdl, FUNC0(TEXT_DOMAIN,
			    "parent does not exist"));
			return (FUNC10(hdl, EZFS_NOENT, errbuf));
		} else
			return (FUNC14(hdl, errno, errbuf));
	}

	is_zoned = FUNC13(zhp, ZFS_PROP_ZONED);
	if (zoned != NULL)
		*zoned = is_zoned;

	/* we are in a non-global zone, but parent is in the global zone */
	if (FUNC1() != GLOBAL_ZONEID && !is_zoned) {
		(void) FUNC14(hdl, EPERM, errbuf);
		FUNC9(zhp);
		return (-1);
	}

	/* make sure parent is a filesystem */
	if (FUNC12(zhp) != ZFS_TYPE_FILESYSTEM) {
		FUNC11(hdl, FUNC0(TEXT_DOMAIN,
		    "parent is not a filesystem"));
		(void) FUNC10(hdl, EZFS_BADTYPE, errbuf);
		FUNC9(zhp);
		return (-1);
	}

	FUNC9(zhp);
	if (prefixlen != NULL)
		*prefixlen = FUNC7(parent);
	return (0);
}