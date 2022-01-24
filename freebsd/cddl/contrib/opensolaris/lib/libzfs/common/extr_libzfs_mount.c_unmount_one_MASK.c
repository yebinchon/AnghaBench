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
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EZFS_UMOUNTFAILED ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC5(libzfs_handle_t *hdl, const char *mountpoint, int flags)
{
	if (FUNC2(mountpoint, flags) != 0) {
		FUNC3(hdl, FUNC1(errno));
		return (FUNC4(hdl, EZFS_UMOUNTFAILED,
		    FUNC0(TEXT_DOMAIN, "cannot unmount '%s'"),
		    mountpoint));
	}

	return (0);
}