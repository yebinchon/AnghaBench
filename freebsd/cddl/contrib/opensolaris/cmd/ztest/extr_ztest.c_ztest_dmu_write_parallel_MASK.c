#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  od_object; } ;
typedef  TYPE_1__ ztest_od_t ;
typedef  int /*<<< orphan*/  ztest_ds_t ;
typedef  unsigned long long uint64_t ;
typedef  int /*<<< orphan*/  od ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DMU_OT_UINT64_OTHER ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  ID_PARALLEL ; 
 unsigned long long SPA_MAXBLOCKSHIFT ; 
 int ZTEST_RANGE_LOCKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC3 (int) ; 

void
FUNC4(ztest_ds_t *zd, uint64_t id)
{
	ztest_od_t od[1];
	uint64_t offset = (1ULL << (FUNC3(20) + 43)) +
	    (FUNC3(ZTEST_RANGE_LOCKS) << SPA_MAXBLOCKSHIFT);

	/*
	 * Have multiple threads write to large offsets in an object
	 * to verify that parallel writes to an object -- even to the
	 * same blocks within the object -- doesn't cause any trouble.
	 */
	FUNC2(&od[0], ID_PARALLEL, FTAG, 0, DMU_OT_UINT64_OTHER,
	    0, 0, 0);

	if (FUNC1(zd, od, sizeof (od), B_FALSE) != 0)
		return;

	while (FUNC3(10) != 0)
		FUNC0(zd, od[0].od_object, offset);
}