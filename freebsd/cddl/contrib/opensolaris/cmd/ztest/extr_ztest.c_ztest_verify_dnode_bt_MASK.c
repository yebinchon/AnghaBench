#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * zd_os; } ;
typedef  TYPE_1__ ztest_ds_t ;
struct TYPE_10__ {scalar_t__ bt_magic; int /*<<< orphan*/  bt_gen; int /*<<< orphan*/  bt_crtxg; int /*<<< orphan*/  bt_txg; int /*<<< orphan*/  bt_offset; } ;
typedef  TYPE_2__ ztest_block_tag_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_11__ {int doi_bonus_size; int /*<<< orphan*/  doi_dnodesize; } ;
typedef  TYPE_3__ dmu_object_info_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;

/* Variables and functions */
 scalar_t__ BT_MAGIC ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC7(ztest_ds_t *zd, uint64_t id)
{
	objset_t *os = zd->zd_os;
	uint64_t obj;
	int err = 0;

	for (obj = 0; err == 0; err = FUNC3(os, &obj, FALSE, 0)) {
		ztest_block_tag_t *bt = NULL;
		dmu_object_info_t doi;
		dmu_buf_t *db;

		if (FUNC0(os, obj, FTAG, &db) != 0)
			continue;

		FUNC2(db, &doi);
		if (doi.doi_bonus_size >= sizeof (*bt))
			bt = FUNC4(db);

		if (bt && bt->bt_magic == BT_MAGIC) {
			FUNC5(bt, os, obj, doi.doi_dnodesize,
			    bt->bt_offset, bt->bt_gen, bt->bt_txg,
			    bt->bt_crtxg);
			FUNC6(db, bt, obj, os, bt->bt_gen);
		}

		FUNC1(db, FTAG);
	}
}