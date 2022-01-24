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
typedef  int /*<<< orphan*/  ztest_ds_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ztest_checkpoint_lock ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * ztest_spa ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(ztest_ds_t *zd, uint64_t id)
{
	spa_t *spa = ztest_spa;

	FUNC0(&ztest_checkpoint_lock);
	if (FUNC2(2) == 0) {
		FUNC3(spa);
	} else {
		FUNC4(spa);
	}
	FUNC1(&ztest_checkpoint_lock);
}