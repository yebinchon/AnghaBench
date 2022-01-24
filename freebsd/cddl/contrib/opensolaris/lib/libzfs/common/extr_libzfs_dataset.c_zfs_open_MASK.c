#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int zfs_type; int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct zfs_open_bookmarks_cb_data {char const* member_0; TYPE_1__* zhp; int /*<<< orphan*/ * member_1; } ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  dsname ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EZFS_BADTYPE ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  EZFS_NOENT ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 char* FUNC4 (char const*,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,struct zfs_open_bookmarks_cb_data*) ; 
 int /*<<< orphan*/  zfs_open_bookmarks_cb ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 

zfs_handle_t *
FUNC12(libzfs_handle_t *hdl, const char *path, int types)
{
	zfs_handle_t *zhp;
	char errbuf[1024];
	char *bookp;

	(void) FUNC3(errbuf, sizeof (errbuf),
	    FUNC1(TEXT_DOMAIN, "cannot open '%s'"), path);

	/*
	 * Validate the name before we even try to open it.
	 */
	if (!FUNC11(hdl, path, types, B_FALSE)) {
		(void) FUNC8(hdl, EZFS_INVALIDNAME, errbuf);
		return (NULL);
	}

	/*
	 * Bookmarks needs to be handled separately.
	 */
	bookp = FUNC4(path, '#');
	if (bookp == NULL) {
		/*
		 * Try to get stats for the dataset, which will tell us if it
		 * exists.
		 */
		errno = 0;
		if ((zhp = FUNC2(hdl, path)) == NULL) {
			(void) FUNC10(hdl, errno, errbuf);
			return (NULL);
		}
	} else {
		char dsname[ZFS_MAX_DATASET_NAME_LEN];
		zfs_handle_t *pzhp;
		struct zfs_open_bookmarks_cb_data cb_data = {path, NULL};

		/*
		 * We need to cut out '#' and everything after '#'
		 * to get the parent dataset name only.
		 */
		FUNC0(bookp - path < sizeof (dsname));
		(void) FUNC6(dsname, path, bookp - path);
		dsname[bookp - path] = '\0';

		/*
		 * Create handle for the parent dataset.
		 */
		errno = 0;
		if ((pzhp = FUNC2(hdl, dsname)) == NULL) {
			(void) FUNC10(hdl, errno, errbuf);
			return (NULL);
		}

		/*
		 * Iterate bookmarks to find the right one.
		 */
		errno = 0;
		if ((FUNC9(pzhp, zfs_open_bookmarks_cb,
		    &cb_data) == 0) && (cb_data.zhp == NULL)) {
			(void) FUNC8(hdl, EZFS_NOENT, errbuf);
			FUNC7(pzhp);
			return (NULL);
		}
		if (cb_data.zhp == NULL) {
			(void) FUNC10(hdl, errno, errbuf);
			FUNC7(pzhp);
			return (NULL);
		}
		zhp = cb_data.zhp;

		/*
		 * Cleanup.
		 */
		FUNC7(pzhp);
	}

	if (zhp == NULL) {
		char *at = FUNC4(path, '@');

		if (at != NULL)
			*at = '\0';
		errno = 0;
		if ((zhp = FUNC2(hdl, path)) == NULL) {
			(void) FUNC10(hdl, errno, errbuf);
			return (NULL);
		}
		if (at != NULL)
			*at = '@';
		(void) FUNC5(zhp->zfs_name, path, sizeof (zhp->zfs_name));
		zhp->zfs_type = ZFS_TYPE_SNAPSHOT;
	}

	if (!(types & zhp->zfs_type)) {
		(void) FUNC8(hdl, EZFS_BADTYPE, errbuf);
		FUNC7(zhp);
		return (NULL);
	}

	return (zhp);
}