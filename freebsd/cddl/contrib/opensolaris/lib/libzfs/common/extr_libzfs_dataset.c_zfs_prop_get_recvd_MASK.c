#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zfs_prop_t ;
struct TYPE_7__ {int /*<<< orphan*/ * zfs_recvd_props; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int FUNC7 (TYPE_1__*,scalar_t__,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC10(zfs_handle_t *zhp, const char *propname, char *propbuf,
    size_t proplen, boolean_t literal)
{
	zfs_prop_t prop;
	int err = 0;

	if (zhp->zfs_recvd_props == NULL)
		if (FUNC0(zhp) != 0)
			return (-1);

	prop = FUNC6(propname);

	if (prop != ZPROP_INVAL) {
		uint64_t cookie;
		if (!FUNC1(zhp->zfs_recvd_props, propname))
			return (-1);
		FUNC8(zhp, &cookie);
		err = FUNC7(zhp, prop, propbuf, proplen,
		    NULL, NULL, 0, literal);
		FUNC9(zhp, &cookie);
	} else {
		nvlist_t *propval;
		char *recvdval;
		if (FUNC2(zhp->zfs_recvd_props,
		    propname, &propval) != 0)
			return (-1);
		FUNC5(FUNC3(propval, ZPROP_VALUE,
		    &recvdval) == 0);
		(void) FUNC4(propbuf, recvdval, proplen);
	}

	return (err == 0 ? 0 : -1);
}