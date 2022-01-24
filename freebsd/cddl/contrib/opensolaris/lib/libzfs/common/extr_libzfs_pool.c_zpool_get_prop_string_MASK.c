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
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  int /*<<< orphan*/  zpool_prop_t ;
struct TYPE_3__ {int /*<<< orphan*/ * zpool_props; } ;
typedef  TYPE_1__ zpool_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPROP_SOURCE ; 
 int /*<<< orphan*/  ZPROP_SRC_DEFAULT ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC6(zpool_handle_t *zhp, zpool_prop_t prop,
    zprop_source_t *src)
{
	nvlist_t *nv, *nvl;
	uint64_t ival;
	char *value;
	zprop_source_t source;

	nvl = zhp->zpool_props;
	if (FUNC0(nvl, FUNC5(prop), &nv) == 0) {
		FUNC3(FUNC2(nv, ZPROP_SOURCE, &ival) == 0);
		source = ival;
		FUNC3(FUNC1(nv, ZPROP_VALUE, &value) == 0);
	} else {
		source = ZPROP_SRC_DEFAULT;
		if ((value = (char *)FUNC4(prop)) == NULL)
			value = "-";
	}

	if (src)
		*src = source;

	return (value);
}