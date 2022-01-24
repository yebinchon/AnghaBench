#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ztest_shared_t ;
struct TYPE_2__ {int zo_init; int zo_verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_config_path ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ ztest_opts ; 
 int /*<<< orphan*/ * ztest_shared ; 

__attribute__((used)) static void
FUNC5(void)
{
	ztest_shared_t *zs = ztest_shared;

	FUNC0(ztest_opts.zo_init != 0);

	/*
	 * Blow away any existing copy of zpool.cache
	 */
	(void) FUNC3(spa_config_path);

	/*
	 * Create and initialize our storage pool.
	 */
	for (int i = 1; i <= ztest_opts.zo_init; i++) {
		FUNC1(zs, sizeof (ztest_shared_t));
		if (ztest_opts.zo_verbose >= 3 &&
		    ztest_opts.zo_init != 1) {
			(void) FUNC2("ztest_init(), pass %d\n", i);
		}
		FUNC4(zs);
	}
}