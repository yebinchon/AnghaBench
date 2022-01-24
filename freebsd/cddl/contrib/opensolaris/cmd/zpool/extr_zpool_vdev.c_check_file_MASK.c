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
typedef  int pool_state_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
#define  POOL_STATE_ACTIVE 131 
#define  POOL_STATE_EXPORTED 130 
#define  POOL_STATE_POTENTIALLY_ACTIVE 129 
#define  POOL_STATE_SPARE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int*,char**,scalar_t__*) ; 

__attribute__((used)) static int
FUNC8(const char *file, boolean_t force, boolean_t isspare)
{
	char  *name;
	int fd;
	int ret = 0;
	int err;
	pool_state_t state;
	boolean_t inuse;

#ifdef illumos
	if (dm_inuse_swap(file, &err)) {
		if (err)
			libdiskmgt_error(err);
		else
			vdev_error(gettext("%s is currently used by swap. "
			    "Please see swap(1M).\n"), file);
		return (-1);
	}
#endif

	if ((fd = FUNC5(file, O_RDONLY)) < 0)
		return (0);

	if (FUNC7(g_zfs, fd, &state, &name, &inuse) == 0 && inuse) {
		const char *desc;

		switch (state) {
		case POOL_STATE_ACTIVE:
			desc = FUNC3("active");
			break;

		case POOL_STATE_EXPORTED:
			desc = FUNC3("exported");
			break;

		case POOL_STATE_POTENTIALLY_ACTIVE:
			desc = FUNC3("potentially active");
			break;

		default:
			desc = FUNC3("unknown");
			break;
		}

		/*
		 * Allow hot spares to be shared between pools.
		 */
		if (state == POOL_STATE_SPARE && isspare)
			return (0);

		if (state == POOL_STATE_ACTIVE ||
		    state == POOL_STATE_SPARE || !force) {
			switch (state) {
			case POOL_STATE_SPARE:
				FUNC6(FUNC3("%s is reserved as a hot "
				    "spare for pool %s\n"), file, name);
				break;
			default:
				FUNC6(FUNC3("%s is part of %s pool "
				    "'%s'\n"), file, desc, name);
				break;
			}
			ret = -1;
		}

		FUNC2(name);
	}

	(void) FUNC0(fd);
	return (ret);
}