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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int longlong_t ;
typedef  size_t int64_t ;
struct TYPE_3__ {int doi_max_offset; } ;
typedef  TYPE_1__ dmu_object_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void
FUNC6(objset_t *os, uint64_t object, void *data, size_t size)
{
	dmu_object_info_t doi;

	FUNC0(FUNC1(os, object, &doi));
	uint64_t *subobjs = FUNC3(doi.doi_max_offset, KM_SLEEP);

	int err = FUNC2(os, object, 0, doi.doi_max_offset, subobjs, 0);
	if (err != 0) {
		(void) FUNC5("got error %u from dmu_read\n", err);
		FUNC4(subobjs, doi.doi_max_offset);
		return;
	}

	int64_t last_nonzero = -1;
	for (uint64_t i = 0; i < doi.doi_max_offset / 8; i++) {
		if (subobjs[i] != 0)
			last_nonzero = i;
	}

	for (int64_t i = 0; i <= last_nonzero; i++) {
		(void) FUNC5("\t%llu\n", (longlong_t)subobjs[i]);
	}
	FUNC4(subobjs, doi.doi_max_offset);
}