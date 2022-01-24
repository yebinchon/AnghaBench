#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int zs_thread_stop; int zs_thread_start; } ;
typedef  TYPE_1__ ztest_shared_t ;
struct TYPE_6__ {int /*<<< orphan*/ * spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
typedef  int hrtime_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int zfs_deadman_synctime_ms ; 
 TYPE_2__* ztest_spa ; 

__attribute__((used)) static void *
FUNC7(void *arg)
{
	ztest_shared_t *zs = arg;
	spa_t *spa = ztest_spa;
	hrtime_t delta, total = 0;

	for (;;) {
		delta = zs->zs_thread_stop - zs->zs_thread_start +
		    FUNC0(zfs_deadman_synctime_ms);

		(void) FUNC3(NULL, 0, (int)FUNC1(delta));

		/*
		 * If the pool is suspended then fail immediately. Otherwise,
		 * check to see if the pool is making any progress. If
		 * vdev_deadman() discovers that there hasn't been any recent
		 * I/Os then it will end up aborting the tests.
		 */
		if (FUNC5(spa) || spa->spa_root_vdev == NULL) {
			FUNC2(0, "aborting test after %llu seconds because "
			    "pool has transitioned to a suspended state.",
			    zfs_deadman_synctime_ms / 1000);
			return (NULL);
		}
		FUNC6(spa->spa_root_vdev);

		total += zfs_deadman_synctime_ms/1000;
		(void) FUNC4("ztest has been running for %lld seconds\n",
		    total);
	}
}