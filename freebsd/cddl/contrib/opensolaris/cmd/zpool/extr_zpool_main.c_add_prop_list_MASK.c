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
typedef  scalar_t__ zpool_prop_t ;
typedef  scalar_t__ zfs_prop_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 scalar_t__ ZPOOL_PROP_CACHEFILE ; 
 scalar_t__ ZPOOL_PROP_INVAL ; 
 scalar_t__ ZPOOL_PROP_VERSION ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,char**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char const*) ; 
 char* FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 char* FUNC11 (scalar_t__) ; 

__attribute__((used)) static int
FUNC12(const char *propname, char *propval, nvlist_t **props,
    boolean_t poolprop)
{
	zpool_prop_t prop = ZPROP_INVAL;
	zfs_prop_t fprop;
	nvlist_t *proplist;
	const char *normnm;
	char *strval;

	if (*props == NULL &&
	    FUNC3(props, NV_UNIQUE_NAME, 0) != 0) {
		(void) FUNC0(stderr,
		    "%s", FUNC1("internal error: out of memory\n"));
		return (1);
	}

	proplist = *props;

	if (poolprop) {
		const char *vname = FUNC11(ZPOOL_PROP_VERSION);

		if ((prop = FUNC9(propname)) == ZPROP_INVAL &&
		    !FUNC10(propname)) {
			(void) FUNC0(stderr, FUNC1("property '%s' is "
			    "not a valid pool property\n"), propname);
			return (2);
		}

		/*
		 * feature@ properties and version should not be specified
		 * at the same time.
		 */
		if ((prop == ZPOOL_PROP_INVAL && FUNC10(propname) &&
		    FUNC4(proplist, vname)) ||
		    (prop == ZPOOL_PROP_VERSION &&
		    FUNC6(proplist))) {
			(void) FUNC0(stderr, "%s", FUNC1("'feature@' and "
			    "'version' properties cannot be specified "
			    "together\n"));
			return (2);
		}


		if (FUNC10(propname))
			normnm = propname;
		else
			normnm = FUNC11(prop);
	} else {
		if ((fprop = FUNC7(propname)) != ZPROP_INVAL) {
			normnm = FUNC8(fprop);
		} else {
			normnm = propname;
		}
	}

	if (FUNC5(proplist, normnm, &strval) == 0 &&
	    prop != ZPOOL_PROP_CACHEFILE) {
		(void) FUNC0(stderr, FUNC1("property '%s' "
		    "specified multiple times\n"), propname);
		return (2);
	}

	if (FUNC2(proplist, normnm, propval) != 0) {
		(void) FUNC0(stderr, "%s", FUNC1("internal "
		    "error: out of memory\n"));
		return (1);
	}

	return (0);
}