#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int uint64_t ;
typedef  scalar_t__ pool_state_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_3__ {int cb_guid; int /*<<< orphan*/ * cb_zhp; int /*<<< orphan*/  cb_type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ aux_cbdata_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 scalar_t__ ENOMEM ; 
#define  POOL_STATE_ACTIVE 131 
#define  POOL_STATE_EXPORTED 130 
#define  POOL_STATE_L2CACHE 129 
 int POOL_STATE_POTENTIALLY_ACTIVE ; 
#define  POOL_STATE_SPARE 128 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_IS_SPARE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_L2CACHE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPARES ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  ZPOOL_PROP_READONLY ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  find_aux ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ **) ; 

int
FUNC16(libzfs_handle_t *hdl, int fd, pool_state_t *state, char **namestr,
    boolean_t *inuse)
{
	nvlist_t *config;
	char *name;
	boolean_t ret;
	uint64_t guid, vdev_guid;
	zpool_handle_t *zhp;
	nvlist_t *pool_config;
	uint64_t stateval, isspare;
	aux_cbdata_t cb = { 0 };
	boolean_t isactive;

	*inuse = B_FALSE;

	if (FUNC15(fd, &config) != 0 && errno == ENOMEM) {
		(void) FUNC1(hdl);
		return (-1);
	}

	if (config == NULL)
		return (0);

	FUNC7(FUNC5(config, ZPOOL_CONFIG_POOL_STATE,
	    &stateval) == 0);
	FUNC7(FUNC5(config, ZPOOL_CONFIG_GUID,
	    &vdev_guid) == 0);

	if (stateval != POOL_STATE_SPARE && stateval != POOL_STATE_L2CACHE) {
		FUNC7(FUNC4(config, ZPOOL_CONFIG_POOL_NAME,
		    &name) == 0);
		FUNC7(FUNC5(config, ZPOOL_CONFIG_POOL_GUID,
		    &guid) == 0);
	}

	switch (stateval) {
	case POOL_STATE_EXPORTED:
		/*
		 * A pool with an exported state may in fact be imported
		 * read-only, so check the in-core state to see if it's
		 * active and imported read-only.  If it is, set
		 * its state to active.
		 */
		if (FUNC6(hdl, name, guid, &isactive) == 0 && isactive &&
		    (zhp = FUNC14(hdl, name)) != NULL) {
			if (FUNC12(zhp, ZPOOL_PROP_READONLY, NULL))
				stateval = POOL_STATE_ACTIVE;

			/*
			 * All we needed the zpool handle for is the
			 * readonly prop check.
			 */
			FUNC9(zhp);
		}

		ret = B_TRUE;
		break;

	case POOL_STATE_ACTIVE:
		/*
		 * For an active pool, we have to determine if it's really part
		 * of a currently active pool (in which case the pool will exist
		 * and the guid will be the same), or whether it's part of an
		 * active pool that was disconnected without being explicitly
		 * exported.
		 */
		if (FUNC6(hdl, name, guid, &isactive) != 0) {
			FUNC2(config);
			return (-1);
		}

		if (isactive) {
			/*
			 * Because the device may have been removed while
			 * offlined, we only report it as active if the vdev is
			 * still present in the config.  Otherwise, pretend like
			 * it's not in use.
			 */
			if ((zhp = FUNC14(hdl, name)) != NULL &&
			    (pool_config = FUNC10(zhp, NULL))
			    != NULL) {
				nvlist_t *nvroot;

				FUNC7(FUNC3(pool_config,
				    ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);
				ret = FUNC0(nvroot, vdev_guid);
			} else {
				ret = B_FALSE;
			}

			/*
			 * If this is an active spare within another pool, we
			 * treat it like an unused hot spare.  This allows the
			 * user to create a pool with a hot spare that currently
			 * in use within another pool.  Since we return B_TRUE,
			 * libdiskmgt will continue to prevent generic consumers
			 * from using the device.
			 */
			if (ret && FUNC5(config,
			    ZPOOL_CONFIG_IS_SPARE, &isspare) == 0 && isspare)
				stateval = POOL_STATE_SPARE;

			if (zhp != NULL)
				FUNC9(zhp);
		} else {
			stateval = POOL_STATE_POTENTIALLY_ACTIVE;
			ret = B_TRUE;
		}
		break;

	case POOL_STATE_SPARE:
		/*
		 * For a hot spare, it can be either definitively in use, or
		 * potentially active.  To determine if it's in use, we iterate
		 * over all pools in the system and search for one with a spare
		 * with a matching guid.
		 *
		 * Due to the shared nature of spares, we don't actually report
		 * the potentially active case as in use.  This means the user
		 * can freely create pools on the hot spares of exported pools,
		 * but to do otherwise makes the resulting code complicated, and
		 * we end up having to deal with this case anyway.
		 */
		cb.cb_zhp = NULL;
		cb.cb_guid = vdev_guid;
		cb.cb_type = ZPOOL_CONFIG_SPARES;
		if (FUNC13(hdl, find_aux, &cb) == 1) {
			name = (char *)FUNC11(cb.cb_zhp);
			ret = B_TRUE;
		} else {
			ret = B_FALSE;
		}
		break;

	case POOL_STATE_L2CACHE:

		/*
		 * Check if any pool is currently using this l2cache device.
		 */
		cb.cb_zhp = NULL;
		cb.cb_guid = vdev_guid;
		cb.cb_type = ZPOOL_CONFIG_L2CACHE;
		if (FUNC13(hdl, find_aux, &cb) == 1) {
			name = (char *)FUNC11(cb.cb_zhp);
			ret = B_TRUE;
		} else {
			ret = B_FALSE;
		}
		break;

	default:
		ret = B_FALSE;
	}


	if (ret) {
		if ((*namestr = FUNC8(hdl, name)) == NULL) {
			if (cb.cb_zhp)
				FUNC9(cb.cb_zhp);
			FUNC2(config);
			return (-1);
		}
		*state = (pool_state_t)stateval;
	}

	if (cb.cb_zhp)
		FUNC9(cb.cb_zhp);

	FUNC2(config);
	*inuse = ret;
	return (0);
}