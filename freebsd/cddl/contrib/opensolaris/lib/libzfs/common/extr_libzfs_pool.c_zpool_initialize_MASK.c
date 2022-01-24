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
struct TYPE_4__ {int /*<<< orphan*/  zpool_name; int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  pool_initialize_func_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int EZFS_ISL2CACHE ; 
 int EZFS_ISSPARE ; 
 int EZFS_NODEVICE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_INITIALIZE_VDEVS ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int,char*) ; 

int
FUNC18(zpool_handle_t *zhp, pool_initialize_func_t cmd_type,
    nvlist_t *vds)
{
	char msg[1024];
	libzfs_handle_t *hdl = zhp->zpool_hdl;

	nvlist_t *errlist;

	/* translate vdev names to guids */
	nvlist_t *vdev_guids = FUNC3();
	nvlist_t *guids_to_paths = FUNC3();
	boolean_t spare, cache;
	nvlist_t *tgt;
	nvpair_t *elem;

	for (elem = FUNC10(vds, NULL); elem != NULL;
	    elem = FUNC10(vds, elem)) {
		char *vd_path = FUNC11(elem);
		tgt = FUNC16(zhp, vd_path, &spare, &cache, NULL);

		if ((tgt == NULL) || cache || spare) {
			(void) FUNC12(msg, sizeof (msg),
			    FUNC0(TEXT_DOMAIN, "cannot initialize '%s'"),
			    vd_path);
			int err = (tgt == NULL) ? EZFS_NODEVICE :
			    (spare ? EZFS_ISSPARE : EZFS_ISL2CACHE);
			FUNC4(vdev_guids);
			FUNC4(guids_to_paths);
			return (FUNC14(hdl, err, msg));
		}

		uint64_t guid = FUNC7(tgt, ZPOOL_CONFIG_GUID);
		FUNC2(vdev_guids, vd_path, guid);

		(void) FUNC12(msg, sizeof (msg), "%llu", guid);
		FUNC1(guids_to_paths, msg, vd_path);
	}

	int err = FUNC9(zhp->zpool_name, cmd_type, vdev_guids,
	    &errlist);
	FUNC4(vdev_guids);

	if (err == 0) {
		FUNC4(guids_to_paths);
		return (0);
	}

	nvlist_t *vd_errlist = NULL;
	if (errlist != NULL) {
		vd_errlist = FUNC5(errlist,
		    ZPOOL_INITIALIZE_VDEVS);
	}

	(void) FUNC12(msg, sizeof (msg),
	    FUNC0(TEXT_DOMAIN, "operation failed"));

	for (elem = FUNC10(vd_errlist, NULL); elem != NULL;
	    elem = FUNC10(vd_errlist, elem)) {
		int64_t vd_error = FUNC13(FUNC8(elem));
		char *path = FUNC6(guids_to_paths,
		    FUNC11(elem));
		(void) FUNC15(hdl, vd_error, "cannot initialize '%s'",
		    path);
	}

	FUNC4(guids_to_paths);
	if (vd_errlist != NULL)
		return (-1);

	return (FUNC17(hdl, err, msg));
}