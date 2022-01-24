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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 char* BOGUS_SUFFIX ; 
 int ZFS_IMPORT_CHECKPOINT ; 
 int ZFS_IMPORT_MISSING_LOG ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char*,size_t) ; 

__attribute__((used)) static char *
FUNC8(char *target, nvlist_t *cfg, char **new_path)
{
	int error = 0;
	char *poolname, *bogus_name;

	/* If the target is not a pool, the extract the pool name */
	char *path_start = FUNC6(target, '/');
	if (path_start != NULL) {
		size_t poolname_len = path_start - target;
		poolname = FUNC7(target, poolname_len);
	} else {
		poolname = target;
	}

	if (cfg == NULL) {
		error = FUNC4(poolname, &cfg, NULL, 0);
		if (error != 0) {
			FUNC1("Tried to read config of pool \"%s\" but "
			    "spa_get_stats() failed with error %d\n",
			    poolname, error);
		}
	}

	(void) FUNC0(&bogus_name, "%s%s", poolname, BOGUS_SUFFIX);
	FUNC2(cfg, ZPOOL_CONFIG_POOL_NAME, bogus_name);

	error = FUNC5(bogus_name, cfg, NULL,
	    ZFS_IMPORT_MISSING_LOG | ZFS_IMPORT_CHECKPOINT);
	if (error != 0) {
		FUNC1("Tried to import pool \"%s\" but spa_import() failed "
		    "with error %d\n", bogus_name, error);
	}

	if (new_path != NULL && path_start != NULL)
		(void) FUNC0(new_path, "%s%s", bogus_name, path_start);

	if (target != poolname)
		FUNC3(poolname);

	return (bogus_name);
}