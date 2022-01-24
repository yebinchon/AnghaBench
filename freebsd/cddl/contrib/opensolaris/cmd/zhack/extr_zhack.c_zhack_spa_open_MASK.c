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
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ SPA_VERSION_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ **,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  zfeature_checks_disable ; 

__attribute__((used)) static void
FUNC5(const char *target, boolean_t readonly, void *tag, spa_t **spa)
{
	int err;

	FUNC1(target, readonly);

	zfeature_checks_disable = B_TRUE;
	err = FUNC2(target, spa, tag);
	zfeature_checks_disable = B_FALSE;

	if (err != 0)
		FUNC0(*spa, FTAG, "cannot open '%s': %s", target,
		    FUNC4(err));
	if (FUNC3(*spa) < SPA_VERSION_FEATURES) {
		FUNC0(*spa, FTAG, "'%s' has version %d, features not enabled",
		    target, (int)FUNC3(*spa));
	}
}