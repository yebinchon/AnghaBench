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
typedef  size_t zfs_prop_t ;
struct TYPE_3__ {scalar_t__* zfs_props_table; int /*<<< orphan*/  zfs_props; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  ZPROP_SOURCE ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 

__attribute__((used)) static const char *
FUNC6(zfs_handle_t *zhp, zfs_prop_t prop, char **source)
{
	nvlist_t *nv;
	const char *value;

	*source = NULL;
	if (FUNC1(zhp->zfs_props,
	    FUNC5(prop), &nv) == 0) {
		value = FUNC0(nv, ZPROP_VALUE);
		(void) FUNC2(nv, ZPROP_SOURCE, source);
	} else {
		FUNC3(!zhp->zfs_props_table ||
		    zhp->zfs_props_table[prop] == B_TRUE);
		value = FUNC4(prop);
		*source = "";
	}

	return (value);
}