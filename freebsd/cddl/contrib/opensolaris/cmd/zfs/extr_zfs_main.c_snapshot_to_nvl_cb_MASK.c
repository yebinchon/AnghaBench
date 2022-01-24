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
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_3__ {int /*<<< orphan*/  cb_nvl; int /*<<< orphan*/  cb_first; int /*<<< orphan*/ * cb_target; int /*<<< orphan*/  cb_defer_destroy; int /*<<< orphan*/  cb_doclones; } ;
typedef  TYPE_1__ destroy_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  destroy_check_dependent ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(zfs_handle_t *zhp, void *arg)
{
	destroy_cbdata_t *cb = arg;
	int err = 0;

	/* Check for clones. */
	if (!cb->cb_doclones && !cb->cb_defer_destroy) {
		cb->cb_target = zhp;
		cb->cb_first = B_TRUE;
		err = FUNC4(zhp, B_TRUE,
		    destroy_check_dependent, cb);
	}

	if (err == 0) {
		if (FUNC1(cb->cb_nvl, FUNC3(zhp)))
			FUNC0();
	}
	FUNC2(zhp);
	return (err);
}