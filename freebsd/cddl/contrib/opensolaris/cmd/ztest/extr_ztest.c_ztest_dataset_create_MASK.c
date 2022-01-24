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
typedef  int uint64_t ;
struct TYPE_2__ {int zo_verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DMU_OST_OTHER ; 
 int /*<<< orphan*/  ZFS_PROP_SYNC ; 
 int /*<<< orphan*/  ZFS_SYNC_ALWAYS ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ztest_objset_create_cb ; 
 TYPE_1__ ztest_opts ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(char *dsname)
{
	uint64_t zilset = FUNC3(100);
	int err = FUNC0(dsname, DMU_OST_OTHER, 0,
	    ztest_objset_create_cb, NULL);

	if (err || zilset < 80)
		return (err);

	if (ztest_opts.zo_verbose >= 6)
		(void) FUNC1("Setting dataset %s to sync always\n", dsname);
	return (FUNC2(dsname, ZFS_PROP_SYNC,
	    ZFS_SYNC_ALWAYS, B_FALSE));
}