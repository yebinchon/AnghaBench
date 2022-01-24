#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_5__ {scalar_t__ cb_recurse; scalar_t__ cb_verbose; int /*<<< orphan*/  cb_snapspec; } ;
typedef  TYPE_1__ destroy_cbdata_t ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  snapshot_to_nvl_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(zfs_handle_t *zhp, void *arg)
{
	destroy_cbdata_t *cb = arg;
	int err = 0;

	err = FUNC3(zhp, cb->cb_snapspec, snapshot_to_nvl_cb, cb);
	if (err == ENOENT)
		err = 0;
	if (err != 0)
		goto out;

	if (cb->cb_verbose) {
		err = FUNC0(zhp, cb);
		if (err != 0)
			goto out;
	}

	if (cb->cb_recurse)
		err = FUNC2(zhp, gather_snapshots, cb);

out:
	FUNC1(zhp);
	return (err);
}