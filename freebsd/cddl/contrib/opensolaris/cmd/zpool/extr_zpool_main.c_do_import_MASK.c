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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ POOL_STATE_EXPORTED ; 
 scalar_t__ POOL_STATE_UNAVAIL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int ZFS_IMPORT_ANY_HOST ; 
 int ZFS_IMPORT_ONLY ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HOSTID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HOSTNAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TIMESTAMP ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 unsigned long FUNC3 () ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC14(nvlist_t *config, const char *newname, const char *mntopts,
    nvlist_t *props, int flags)
{
	zpool_handle_t *zhp;
	char *name;
	uint64_t state;
	uint64_t version;

	FUNC8(FUNC6(config, ZPOOL_CONFIG_POOL_NAME,
	    &name) == 0);

	FUNC8(FUNC7(config,
	    ZPOOL_CONFIG_POOL_STATE, &state) == 0);
	FUNC8(FUNC7(config,
	    ZPOOL_CONFIG_VERSION, &version) == 0);
	if (!FUNC0(version)) {
		(void) FUNC2(stderr, FUNC4("cannot import '%s': pool "
		    "is formatted using an unsupported ZFS version\n"), name);
		return (1);
	} else if (state != POOL_STATE_EXPORTED &&
	    !(flags & ZFS_IMPORT_ANY_HOST)) {
		uint64_t hostid;

		if (FUNC7(config, ZPOOL_CONFIG_HOSTID,
		    &hostid) == 0) {
			if ((unsigned long)hostid != FUNC3()) {
				char *hostname;
				uint64_t timestamp;
				time_t t;

				FUNC8(FUNC6(config,
				    ZPOOL_CONFIG_HOSTNAME, &hostname) == 0);
				FUNC8(FUNC7(config,
				    ZPOOL_CONFIG_TIMESTAMP, &timestamp) == 0);
				t = timestamp;
				(void) FUNC2(stderr, FUNC4("cannot import "
				    "'%s': pool may be in use from other "
				    "system, it was last accessed by %s "
				    "(hostid: 0x%lx) on %s"), name, hostname,
				    (unsigned long)hostid,
				    FUNC1(FUNC5(&t)));
				(void) FUNC2(stderr, "%s", FUNC4("use '-f' to "
				    "import anyway\n"));
				return (1);
			}
		} else {
			(void) FUNC2(stderr, FUNC4("cannot import '%s': "
			    "pool may be in use from other system\n"), name);
			(void) FUNC2(stderr, "%s", FUNC4("use '-f' to import "
			    "anyway\n"));
			return (1);
		}
	}

	if (FUNC12(g_zfs, config, newname, props, flags) != 0)
		return (1);

	if (newname != NULL)
		name = (char *)newname;

	if ((zhp = FUNC13(g_zfs, name)) == NULL)
		return (1);

	if (FUNC11(zhp) != POOL_STATE_UNAVAIL &&
	    !(flags & ZFS_IMPORT_ONLY) &&
	    FUNC10(zhp, mntopts, 0) != 0) {
		FUNC9(zhp);
		return (1);
	}

	FUNC9(zhp);
	return (0);
}