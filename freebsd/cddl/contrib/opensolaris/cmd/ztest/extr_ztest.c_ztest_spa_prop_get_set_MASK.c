#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ztest_ds_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_2__ {int zo_verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZIO_DEDUPDITTO_MIN ; 
 int /*<<< orphan*/  ZPOOL_PROP_DEDUPDITTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  ztest_name_lock ; 
 TYPE_1__ ztest_opts ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  ztest_spa ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC8(ztest_ds_t *zd, uint64_t id)
{
	nvlist_t *props = NULL;

	FUNC3(&ztest_name_lock, RW_READER);

	(void) FUNC7(ZPOOL_PROP_DEDUPDITTO,
	    ZIO_DEDUPDITTO_MIN + FUNC6(ZIO_DEDUPDITTO_MIN));

	FUNC0(FUNC5(ztest_spa, &props));

	if (ztest_opts.zo_verbose >= 6)
		FUNC1(props, 4);

	FUNC2(props);

	FUNC4(&ztest_name_lock);
}