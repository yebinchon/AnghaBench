#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  spa_feat_enabled_txg_obj; int /*<<< orphan*/  spa_feat_desc_obj; int /*<<< orphan*/  spa_feat_for_write_obj; int /*<<< orphan*/  spa_feat_for_read_obj; int /*<<< orphan*/ * spa_meta_objset; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SPA_FEATURE_ENABLED_TXG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 

__attribute__((used)) static void
FUNC7(int argc, char **argv)
{
	spa_t *spa;
	objset_t *os;
	char *target;

	argc--;
	argv++;

	if (argc < 1) {
		(void) FUNC2(stderr, "error: missing pool name\n");
		FUNC5();
	}
	target = argv[0];

	FUNC6(target, B_TRUE, FTAG, &spa);
	os = spa->spa_meta_objset;

	FUNC1(os, spa->spa_feat_for_read_obj, "for_read");
	FUNC1(os, spa->spa_feat_for_write_obj, "for_write");
	FUNC1(os, spa->spa_feat_desc_obj, "descriptions");
	if (FUNC4(spa, SPA_FEATURE_ENABLED_TXG)) {
		FUNC1(os, spa->spa_feat_enabled_txg_obj, "enabled_txg");
	}
	FUNC0(spa);

	FUNC3(spa, FTAG);
}