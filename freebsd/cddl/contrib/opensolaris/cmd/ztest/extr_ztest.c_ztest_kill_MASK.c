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
struct TYPE_3__ {int /*<<< orphan*/  zs_space; int /*<<< orphan*/  zs_alloc; } ;
typedef  TYPE_1__ ztest_shared_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ztest_spa ; 

__attribute__((used)) static void
FUNC9(ztest_shared_t *zs)
{
	zs->zs_alloc = FUNC2(FUNC6(ztest_spa));
	zs->zs_space = FUNC3(FUNC6(ztest_spa));

	/*
	 * Before we kill off ztest, make sure that the config is updated.
	 * See comment above spa_write_cachefile().
	 */
	FUNC4(&spa_namespace_lock);
	FUNC7(ztest_spa, B_FALSE, B_FALSE);
	FUNC5(&spa_namespace_lock);

	FUNC8(FTAG);
	(void) FUNC1(FUNC0(), SIGKILL);
}