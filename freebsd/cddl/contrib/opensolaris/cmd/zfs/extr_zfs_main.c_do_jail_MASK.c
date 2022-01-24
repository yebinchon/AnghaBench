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

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(int argc, char **argv, int attach)
{
	zfs_handle_t *zhp;
	int jailid, ret;

	/* check number of arguments */
	if (argc < 3) {
		(void) FUNC0(stderr, "%s", FUNC1("missing argument(s)\n"));
		FUNC3(B_FALSE);
	}
	if (argc > 3) {
		(void) FUNC0(stderr, "%s", FUNC1("too many arguments\n"));
		FUNC3(B_FALSE);
	}

	jailid = FUNC2(argv[1]);
	if (jailid < 0) {
		(void) FUNC0(stderr, "%s", FUNC1("invalid jail id or name\n"));
		FUNC3(B_FALSE);
	}

	zhp = FUNC6(g_zfs, argv[2], ZFS_TYPE_FILESYSTEM);
	if (zhp == NULL)
		return (1);

	ret = (FUNC5(zhp, jailid, attach) != 0);

	FUNC4(zhp);
	return (ret);
}