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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_2__ {int cb_namewidth; int /*<<< orphan*/  cb_verbose; } ;
typedef  TYPE_1__ iostat_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(zpool_handle_t *zhp, void *data)
{
	iostat_cbdata_t *cb = data;
	nvlist_t *config, *nvroot;

	if ((config = FUNC4(zhp, NULL)) != NULL) {
		FUNC3(FUNC1(config, ZPOOL_CONFIG_VDEV_TREE,
		    &nvroot) == 0);
		if (!cb->cb_verbose)
			cb->cb_namewidth = FUNC2(FUNC5(zhp));
		else
			cb->cb_namewidth = FUNC0(zhp, nvroot, 0,
			    cb->cb_namewidth);
	}

	/*
	 * The width must fall into the range [10,38].  The upper limit is the
	 * maximum we can have and still fit in 80 columns.
	 */
	if (cb->cb_namewidth < 10)
		cb->cb_namewidth = 10;
	if (cb->cb_namewidth > 38)
		cb->cb_namewidth = 38;

	return (0);
}