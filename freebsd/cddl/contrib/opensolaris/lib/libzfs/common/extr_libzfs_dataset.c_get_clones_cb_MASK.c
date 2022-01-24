#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct get_clones_arg {scalar_t__ numclones; int /*<<< orphan*/  value; int /*<<< orphan*/  origin; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ZFS_PROP_ORIGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),struct get_clones_arg*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(zfs_handle_t *zhp, void *arg)
{
	struct get_clones_arg *gca = arg;

	if (gca->numclones == 0) {
		FUNC2(zhp);
		return (0);
	}

	if (FUNC5(zhp, ZFS_PROP_ORIGIN, gca->buf, sizeof (gca->buf),
	    NULL, NULL, 0, B_TRUE) != 0)
		goto out;
	if (FUNC1(gca->buf, gca->origin) == 0) {
		FUNC0(gca->value, FUNC3(zhp));
		gca->numclones--;
	}

out:
	(void) FUNC4(zhp, get_clones_cb, gca);
	FUNC2(zhp);
	return (0);
}