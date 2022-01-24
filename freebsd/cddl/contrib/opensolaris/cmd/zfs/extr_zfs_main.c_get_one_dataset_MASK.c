#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int zfs_type_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  scalar_t__ time_t ;
struct TYPE_3__ {TYPE_2__* ga_cbp; scalar_t__ ga_verbose; } ;
typedef  TYPE_1__ get_all_state_t ;
struct TYPE_4__ {scalar_t__ cb_used; scalar_t__ cb_alloc; } ;

/* Variables and functions */
 int CHECK_SPINNER ; 
 scalar_t__ SPINNER_TIME ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),void*) ; 

__attribute__((used)) static int
FUNC7(zfs_handle_t *zhp, void *data)
{
	static char *spin[] = { "-", "\\", "|", "/" };
	static int spinval = 0;
	static int spincheck = 0;
	static time_t last_spin_time = (time_t)0;
	get_all_state_t *state = data;
	zfs_type_t type = FUNC5(zhp);

	if (state->ga_verbose) {
		if (--spincheck < 0) {
			time_t now = FUNC2(NULL);
			if (last_spin_time + SPINNER_TIME < now) {
				FUNC3(spin[spinval++ % 4]);
				last_spin_time = now;
			}
			spincheck = CHECK_SPINNER;
		}
	}

	/*
	 * Interate over any nested datasets.
	 */
	if (FUNC6(zhp, get_one_dataset, data) != 0) {
		FUNC4(zhp);
		return (1);
	}

	/*
	 * Skip any datasets whose type does not match.
	 */
	if ((type & ZFS_TYPE_FILESYSTEM) == 0) {
		FUNC4(zhp);
		return (0);
	}
	FUNC1(state->ga_cbp, zhp);
	FUNC0(state->ga_cbp->cb_used <= state->ga_cbp->cb_alloc);

	return (0);
}