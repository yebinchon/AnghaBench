#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  shareopts ;
struct TYPE_24__ {size_t zhandle_len; TYPE_1__** zhandle_arr; } ;
typedef  TYPE_2__ sa_init_selective_arg_t ;
struct TYPE_25__ {TYPE_1__* cn_handle; scalar_t__ cn_shared; scalar_t__ cn_mounted; scalar_t__ cn_needpost; scalar_t__ cn_zoned; } ;
typedef  TYPE_3__ prop_changenode_t ;
struct TYPE_26__ {scalar_t__ cl_prop; int cl_gflags; scalar_t__ cl_waslegacy; int /*<<< orphan*/  cl_list; } ;
typedef  TYPE_4__ prop_changelist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 int CL_GATHER_DONT_UNMOUNT ; 
 scalar_t__ GLOBAL_ZONEID ; 
 int /*<<< orphan*/  SA_INIT_SHARE_API_SELECTIVE ; 
 int TRUE ; 
 scalar_t__ ZFS_CANMOUNT_ON ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int ZFS_MAXPROPLEN ; 
 int /*<<< orphan*/  ZFS_PROP_CANMOUNT ; 
 scalar_t__ ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  ZFS_PROP_SHARENFS ; 
 int /*<<< orphan*/  ZFS_PROP_SHARESMB ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_1__** FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC20(prop_changelist_t *clp)
{
	prop_changenode_t *cn;
	char shareopts[ZFS_MAXPROPLEN];
	int errors = 0;
	libzfs_handle_t *hdl;
#ifdef illumos
	size_t num_datasets = 0, i;
	zfs_handle_t **zhandle_arr;
	sa_init_selective_arg_t sharearg;
#endif

	/*
	 * If we're changing the mountpoint, attempt to destroy the underlying
	 * mountpoint.  All other datasets will have inherited from this dataset
	 * (in which case their mountpoints exist in the filesystem in the new
	 * location), or have explicit mountpoints set (in which case they won't
	 * be in the changelist).
	 */
	if ((cn = FUNC6(clp->cl_list)) == NULL)
		return (0);

	if (clp->cl_prop == ZFS_PROP_MOUNTPOINT &&
	    !(clp->cl_gflags & CL_GATHER_DONT_UNMOUNT)) {
		FUNC4(cn->cn_handle);
	}

	/*
	 * It is possible that the changelist_prefix() used libshare
	 * to unshare some entries. Since libshare caches data, an
	 * attempt to reshare during postfix can fail unless libshare
	 * is uninitialized here so that it will reinitialize later.
	 */
	if (cn->cn_handle != NULL) {
		hdl = cn->cn_handle->zfs_hdl;
		FUNC1(hdl != NULL);
		FUNC17(hdl);

#ifdef illumos
		/*
		 * For efficiencies sake, we initialize libshare for only a few
		 * shares (the ones affected here). Future initializations in
		 * this process should just use the cached initialization.
		 */
		for (cn = uu_list_last(clp->cl_list); cn != NULL;
		    cn = uu_list_prev(clp->cl_list, cn)) {
			num_datasets++;
		}

		zhandle_arr = zfs_alloc(hdl,
		    num_datasets * sizeof (zfs_handle_t *));
		for (i = 0, cn = uu_list_last(clp->cl_list); cn != NULL;
		    cn = uu_list_prev(clp->cl_list, cn)) {
			zhandle_arr[i++] = cn->cn_handle;
			zfs_refresh_properties(cn->cn_handle);
		}
		assert(i == num_datasets);
		sharearg.zhandle_arr = zhandle_arr;
		sharearg.zhandle_len = num_datasets;
		errors = zfs_init_libshare_arg(hdl, SA_INIT_SHARE_API_SELECTIVE,
		    &sharearg);
		free(zhandle_arr);
#endif
	}
	/*
	 * We walk the datasets in reverse, because we want to mount any parent
	 * datasets before mounting the children.  We walk all datasets even if
	 * there are errors.
	 */
	for (cn = FUNC6(clp->cl_list); cn != NULL;
	    cn = FUNC7(clp->cl_list, cn)) {

		boolean_t sharenfs;
		boolean_t sharesmb;
		boolean_t mounted;

		/*
		 * If we are in the global zone, but this dataset is exported
		 * to a local zone, do nothing.
		 */
		if (FUNC3() == GLOBAL_ZONEID && cn->cn_zoned)
			continue;

		/* Only do post-processing if it's required */
		if (!cn->cn_needpost)
			continue;
		cn->cn_needpost = B_FALSE;

#ifndef illumos
		FUNC14(cn->cn_handle);
#endif

		if (FUNC0(cn->cn_handle))
			continue;

		/*
		 * Remount if previously mounted or mountpoint was legacy,
		 * or sharenfs or sharesmb  property is set.
		 */
		sharenfs = ((FUNC12(cn->cn_handle, ZFS_PROP_SHARENFS,
		    shareopts, sizeof (shareopts), NULL, NULL, 0,
		    B_FALSE) == 0) && (FUNC5(shareopts, "off") != 0));

		sharesmb = ((FUNC12(cn->cn_handle, ZFS_PROP_SHARESMB,
		    shareopts, sizeof (shareopts), NULL, NULL, 0,
		    B_FALSE) == 0) && (FUNC5(shareopts, "off") != 0));

		mounted = (clp->cl_gflags & CL_GATHER_DONT_UNMOUNT) ||
		    FUNC10(cn->cn_handle, NULL);

		if (!mounted && (cn->cn_mounted ||
		    ((sharenfs || sharesmb || clp->cl_waslegacy) &&
		    (FUNC13(cn->cn_handle,
		    ZFS_PROP_CANMOUNT) == ZFS_CANMOUNT_ON)))) {

			if (FUNC11(cn->cn_handle, NULL, 0) != 0)
				errors++;
			else
				mounted = TRUE;
		}

		/*
		 * If the file system is mounted we always re-share even
		 * if the filesystem is currently shared, so that we can
		 * adopt any new options.
		 */
		if (sharenfs && mounted)
			errors += FUNC15(cn->cn_handle);
		else if (cn->cn_shared || clp->cl_waslegacy)
			errors += FUNC18(cn->cn_handle, NULL);
		if (sharesmb && mounted)
			errors += FUNC16(cn->cn_handle);
		else if (cn->cn_shared || clp->cl_waslegacy)
			errors += FUNC19(cn->cn_handle, NULL);
	}

	return (errors ? -1 : 0);
}