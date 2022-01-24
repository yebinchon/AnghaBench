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
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  void* boolean_t ;
struct TYPE_3__ {char const* poolname; void* can_be_active; void* unique; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ZFS ; 
 int EEXIST ; 
 int FREAD ; 
 int /*<<< orphan*/  FTAG ; 
 int FWRITE ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  ZFS_IMPORT_NORMAL ; 
 int /*<<< orphan*/  ZPOOL_PROP_READONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,...) ; 
 TYPE_1__ g_importargs ; 
 char const* g_pool ; 
 void* g_readonly ; 
 int /*<<< orphan*/ * g_zfs ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  space_delta_cb ; 
 char* FUNC14 (char const*) ; 
 char const* FUNC15 (int) ; 
 char* FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 void* zfeature_checks_disable ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC20(const char *target, boolean_t readonly)
{
	nvlist_t *config;
	nvlist_t *pools;
	int error;
	char *sepp;
	spa_t *spa;
	nvpair_t *elem;
	nvlist_t *props;
	const char *name;

	FUNC3(readonly ? FREAD : (FREAD | FWRITE));
	g_zfs = FUNC4();
	FUNC0(g_zfs != NULL);

	FUNC1(DMU_OST_ZFS, space_delta_cb);

	g_readonly = readonly;

	/*
	 * If we only want readonly access, it's OK if we find
	 * a potentially-active (ie, imported into the kernel) pool from the
	 * default cachefile.
	 */
	if (readonly && FUNC13(target, &spa, FTAG) == 0) {
		FUNC11(spa, FTAG);
		return;
	}

	g_importargs.unique = B_TRUE;
	g_importargs.can_be_active = readonly;
	g_pool = FUNC14(target);
	if ((sepp = FUNC16(g_pool, "/@")) != NULL)
		*sepp = '\0';
	g_importargs.poolname = g_pool;
	pools = FUNC19(g_zfs, &g_importargs);

	if (FUNC7(pools)) {
		if (!g_importargs.can_be_active) {
			g_importargs.can_be_active = B_TRUE;
			if (FUNC19(g_zfs, &g_importargs) != NULL ||
			    FUNC13(target, &spa, FTAG) == 0) {
				FUNC2(spa, FTAG, "cannot import '%s': pool is "
				    "active; run " "\"zpool export %s\" "
				    "first\n", g_pool, g_pool);
			}
		}

		FUNC2(NULL, FTAG, "cannot import '%s': no such pool "
		    "available\n", g_pool);
	}

	elem = FUNC8(pools, NULL);
	name = FUNC9(elem);
	FUNC17(FUNC10(elem, &config) == 0);

	props = NULL;
	if (readonly) {
		FUNC17(FUNC6(&props, NV_UNIQUE_NAME, 0) == 0);
		FUNC17(FUNC5(props,
		    FUNC18(ZPOOL_PROP_READONLY), 1) == 0);
	}

	zfeature_checks_disable = B_TRUE;
	error = FUNC12(name, config, props, ZFS_IMPORT_NORMAL);
	zfeature_checks_disable = B_FALSE;
	if (error == EEXIST)
		error = 0;

	if (error)
		FUNC2(NULL, FTAG, "can't import '%s': %s", name,
		    FUNC15(error));
}