#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ od_object; } ;
typedef  TYPE_1__ ztest_od_t ;
struct TYPE_8__ {int /*<<< orphan*/ * zd_os; } ;
typedef  TYPE_2__ ztest_ds_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  od ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OT_ZAP_OTHER ; 
 int EEXIST ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  TXG_MIGHTWAIT ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,scalar_t__,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,char*,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(ztest_ds_t *zd, uint64_t id)
{
	objset_t *os = zd->zd_os;
	ztest_od_t od[1];
	uint64_t object, txg;

	FUNC7(&od[0], id, FTAG, 0, DMU_OT_ZAP_OTHER, 0, 0, 0);

	if (FUNC6(zd, od, sizeof (od), !FUNC8(2)) != 0)
		return;

	object = od[0].od_object;

	/*
	 * Add entries to this ZAP and make sure it spills over
	 * and gets upgraded to a fatzap. Also, since we are adding
	 * 2050 entries we should see ptrtbl growth and leaf-block split.
	 */
	for (int i = 0; i < 2050; i++) {
		char name[ZFS_MAX_DATASET_NAME_LEN];
		uint64_t value = i;
		dmu_tx_t *tx;
		int error;

		(void) FUNC4(name, sizeof (name), "fzap-%llu-%llu",
		    id, value);

		tx = FUNC2(os);
		FUNC3(tx, object, B_TRUE, name);
		txg = FUNC9(tx, TXG_MIGHTWAIT, FTAG);
		if (txg == 0)
			return;
		error = FUNC5(os, object, name, sizeof (uint64_t), 1,
		    &value, tx);
		FUNC0(error == 0 || error == EEXIST);
		FUNC1(tx);
	}
}