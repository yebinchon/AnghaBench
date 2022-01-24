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
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/ * cb_prevsnap; int /*<<< orphan*/ * cb_firstsnap; int /*<<< orphan*/  cb_snapused; } ;
typedef  TYPE_1__ destroy_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  destroy_print_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(zfs_handle_t *fs_zhp, destroy_cbdata_t *cb)
{
	int err = 0;
	FUNC0(cb->cb_firstsnap == NULL);
	FUNC0(cb->cb_prevsnap == NULL);
	err = FUNC3(fs_zhp, destroy_print_cb, cb, 0, 0);
	if (cb->cb_firstsnap != NULL) {
		uint64_t used = 0;
		if (err == 0) {
			err = FUNC2(cb->cb_firstsnap,
			    cb->cb_prevsnap, &used);
		}
		cb->cb_snapused += used;
		FUNC1(cb->cb_firstsnap);
		cb->cb_firstsnap = NULL;
		FUNC1(cb->cb_prevsnap);
		cb->cb_prevsnap = NULL;
	}
	return (err);
}