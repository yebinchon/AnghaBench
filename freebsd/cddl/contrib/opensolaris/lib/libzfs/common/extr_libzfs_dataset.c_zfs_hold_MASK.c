#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  zfs_hdl; int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct holdarg {char const* snapname; char const* tag; int /*<<< orphan*/  nvl; int /*<<< orphan*/  recursive; } ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct holdarg*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 

int
FUNC9(zfs_handle_t *zhp, const char *snapname, const char *tag,
    boolean_t recursive, int cleanup_fd)
{
	int ret;
	struct holdarg ha;

	ha.nvl = FUNC1();
	ha.snapname = snapname;
	ha.tag = tag;
	ha.recursive = recursive;
	(void) FUNC7(FUNC5(zhp), &ha);

	if (FUNC3(ha.nvl)) {
		char errbuf[1024];

		FUNC2(ha.nvl);
		ret = ENOENT;
		(void) FUNC4(errbuf, sizeof (errbuf),
		    FUNC0(TEXT_DOMAIN,
		    "cannot hold snapshot '%s@%s'"),
		    zhp->zfs_name, snapname);
		(void) FUNC8(zhp->zfs_hdl, ret, errbuf);
		return (ret);
	}

	ret = FUNC6(zhp, cleanup_fd, ha.nvl);
	FUNC2(ha.nvl);

	return (ret);
}