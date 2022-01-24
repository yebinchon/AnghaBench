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
struct TYPE_2__ {int /*<<< orphan*/  cb_unavail; scalar_t__ cb_first; } ;
typedef  TYPE_1__ upgrade_cbdata_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ POOL_STATE_UNAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zpool_handle_t *zhp, void *arg)
{
	upgrade_cbdata_t *cbp = arg;

	if (FUNC4(zhp) == POOL_STATE_UNAVAIL) {
		if (cbp->cb_first) {
			(void) FUNC0(stderr, "%s", FUNC1("The following pools "
			    "are unavailable and cannot be upgraded as this "
			    "time.\n\n"));
			(void) FUNC0(stderr, "%s", FUNC1("POOL\n"));
			(void) FUNC0(stderr, "%s", FUNC1("------------\n"));
			cbp->cb_first = B_FALSE;
		}
		(void) FUNC2(FUNC1("%s\n"), FUNC3(zhp));
		cbp->cb_unavail = B_TRUE;
	}
	return (0);
}