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
struct TYPE_2__ {scalar_t__ cb_type; int /*<<< orphan*/  cb_scrub_cmd; } ;
typedef  TYPE_1__ scrub_cbdata_t ;

/* Variables and functions */
 scalar_t__ POOL_SCAN_SCRUB ; 
 scalar_t__ POOL_STATE_UNAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC7(zpool_handle_t *zhp, void *data)
{
	scrub_cbdata_t *cb = data;
	int err;

	/*
	 * Ignore faulted pools.
	 */
	if (FUNC4(zhp) == POOL_STATE_UNAVAIL) {
		(void) FUNC0(stderr, FUNC1("cannot scrub '%s': pool is "
		    "currently unavailable\n"), FUNC3(zhp));
		return (1);
	}

	err = FUNC6(zhp, cb->cb_type, cb->cb_scrub_cmd);

	if (err == 0 && FUNC5(zhp) &&
	    cb->cb_type == POOL_SCAN_SCRUB) {
		(void) FUNC2(FUNC1("warning: will not scrub state that "
		    "belongs to the checkpoint of pool '%s'\n"),
		    FUNC3(zhp));
	}

	return (err != 0);
}