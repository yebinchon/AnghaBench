#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t spa_feature_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_5__ {int /*<<< orphan*/ * ds_feature_inuse; } ;
struct TYPE_4__ {int fi_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMU_OST_ANY ; 
 int /*<<< orphan*/  FTAG ; 
 size_t SPA_FEATURES ; 
 int ZFEATURE_FLAG_PER_DATASET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dataset_feature_count ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  remap_deadlist_count ; 
 TYPE_1__* spa_feature_table ; 

__attribute__((used)) static int
FUNC7(const char *dsname, void *arg)
{
	int error;
	objset_t *os;

	error = FUNC6(dsname, DMU_OST_ANY, FTAG, &os);
	if (error != 0)
		return (0);

	for (spa_feature_t f = 0; f < SPA_FEATURES; f++) {
		if (!FUNC2(os)->ds_feature_inuse[f])
			continue;
		FUNC0(spa_feature_table[f].fi_flags &
		    ZFEATURE_FLAG_PER_DATASET);
		dataset_feature_count[f]++;
	}

	if (FUNC3(FUNC2(os))) {
		remap_deadlist_count++;
	}

	FUNC4(os);
	FUNC1(os, FTAG);
	FUNC5();
	return (0);
}