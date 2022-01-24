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
typedef  int /*<<< orphan*/  zfs_prop_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_2__ {int zo_verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FTAG ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 int /*<<< orphan*/  ZPROP_SRC_NONE ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,char const*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__ ztest_opts ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(char *osname, zfs_prop_t prop, uint64_t value,
    boolean_t inherit)
{
	const char *propname = FUNC7(prop);
	const char *valname;
	char setpoint[MAXPATHLEN];
	uint64_t curval;
	int error;

	error = FUNC4(osname, propname,
	    (inherit ? ZPROP_SRC_NONE : ZPROP_SRC_LOCAL), value);

	if (error == ENOSPC) {
		FUNC8(FTAG);
		return (error);
	}
	FUNC0(error);

	FUNC2(FUNC3(osname, propname, &curval, setpoint));

	if (ztest_opts.zo_verbose >= 6) {
		FUNC1(FUNC6(prop, curval, &valname) == 0);
		(void) FUNC5("%s %s = %s at '%s'\n",
		    osname, propname, valname, setpoint);
	}

	return (error);
}