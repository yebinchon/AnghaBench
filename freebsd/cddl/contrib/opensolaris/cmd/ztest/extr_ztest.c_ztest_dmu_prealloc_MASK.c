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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  od ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_OT_UINT64_OTHER ; 
 int /*<<< orphan*/  FTAG ; 
 unsigned long long SPA_MAXBLOCKSHIFT ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int ZTEST_RANGE_LOCKS ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,void*) ; 

void
FUNC10(ztest_ds_t *zd, uint64_t id)
{
	ztest_od_t od[1];
	uint64_t offset = (1ULL << (FUNC6(4) + SPA_MAXBLOCKSHIFT)) +
	    (FUNC6(ZTEST_RANGE_LOCKS) << SPA_MAXBLOCKSHIFT);
	uint64_t count = FUNC6(20) + 1;
	uint64_t blocksize = FUNC7();
	void *data;

	FUNC4(&od[0], id, FTAG, 0, DMU_OT_UINT64_OTHER, blocksize,
	    0, 0);

	if (FUNC3(zd, od, sizeof (od), !FUNC6(2)) != 0)
		return;

	if (FUNC8(zd, od[0].od_object, offset, count * blocksize) != 0)
		return;

	FUNC5(zd, od[0].od_object, offset, count * blocksize);

	data = FUNC1(blocksize, UMEM_NOFAIL);

	while (FUNC6(count) != 0) {
		uint64_t randoff = offset + (FUNC6(count) * blocksize);
		if (FUNC9(zd, od[0].od_object, randoff, blocksize,
		    data) != 0)
			break;
		while (FUNC6(4) != 0)
			FUNC2(zd, od[0].od_object, randoff);
	}

	FUNC0(data, blocksize);
}