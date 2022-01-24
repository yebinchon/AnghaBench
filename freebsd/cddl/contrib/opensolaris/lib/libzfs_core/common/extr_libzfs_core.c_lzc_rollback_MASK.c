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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_IOC_ROLLBACK ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

int
FUNC5(const char *fsname, char *snapnamebuf, int snapnamelen)
{
	nvlist_t *args;
	nvlist_t *result;
	int err;

	args = FUNC0();
	err = FUNC2(ZFS_IOC_ROLLBACK, fsname, args, &result);
	FUNC3(args);
	if (err == 0 && snapnamebuf != NULL) {
		const char *snapname = FUNC1(result, "target");
		(void) FUNC4(snapnamebuf, snapname, snapnamelen);
	}
	FUNC3(result);

	return (err);
}